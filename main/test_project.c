#include <stdio.h>
#include <stdlib.h>
#include <esp_expression_with_stack.h>
#include "lwip/sockets.h"

#include "config.h"



#define CONFIG_LED_PIN GPIO_NUM_4

#define AP_SSID "ESP32_AP_WIFI"
#define AP_PASSWORD "password1234"
#define AP_MAX_CONN 4
#define AP_CHANNEL 0

#define PORT 3333

#define STA_SSID "NETGEAR89"
#define STA_PASSWORD "Bou15Ele"
#define EXAMPLE_ESP_MAXIMUM_RETRY  1000
#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1

#define TAG "test_project"


static int s_retry_num = 0;
static EventGroupHandle_t s_wifi_event_group;

static void wifi_event_handler(void* arg, esp_event_base_t event_base,
                               int32_t event_id, void* event_data)
{
    //acces point events
    if (event_id == WIFI_EVENT_AP_STACONNECTED) {
        wifi_event_ap_staconnected_t* event = (wifi_event_ap_staconnected_t*) event_data;
        ESP_LOGI(TAG, "station "MACSTR" join, AID=%d",
                 MAC2STR(event->mac), event->aid);
    } else if (event_id == WIFI_EVENT_AP_STADISCONNECTED) {
        wifi_event_ap_stadisconnected_t* event = (wifi_event_ap_stadisconnected_t*) event_data;
        ESP_LOGI(TAG, "station "MACSTR" leave, AID=%d",
                 MAC2STR(event->mac), event->aid);
    }
    //station mode events
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        esp_wifi_connect();
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if (s_retry_num < EXAMPLE_ESP_MAXIMUM_RETRY) {
            esp_wifi_connect();
            s_retry_num++;
            ESP_LOGI(TAG, "retry to connect to the AP");
        } else {
            xEventGroupSetBits(s_wifi_event_group, WIFI_FAIL_BIT);
        }
        ESP_LOGI(TAG,"connect to the AP fail");
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;
        ESP_LOGI(TAG, "got ip:" IPSTR, IP2STR(&event->ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(s_wifi_event_group, WIFI_CONNECTED_BIT);
    }
}


//////////////////////////Function that scans for available networks//////////////////////////////
void wifi_scan() {
    wifi_scan_config_t scan_config = {
            .ssid = 0,  //name of the network
            .bssid = 0, //MAC address of Acces Point (AP)
            .channel = 0, //which channel the broadcast is on
            .show_hidden = true //if true ESP will write hidden networks on the terminal.
    };
    printf("Start scanning...\n");
    ESP_ERROR_CHECK(esp_wifi_scan_start(&scan_config, true)); // first parameters, here the data will be stored.
    printf("Completed!\n");
    uint16_t ap_num;
    wifi_ap_record_t ap_records[20]; // maximum amount of networks that will be stored
    ESP_ERROR_CHECK(esp_wifi_scan_get_ap_records(&ap_num, ap_records));
    printf("Found %d acces points: \n", ap_num);
    printf("|                  SSID           |   CHANNEL  |   RSSI\n\n");
    for (int i = 0; i < ap_num; i++) {
        printf("%32s  |   %7d  |   %4d\n", ap_records[i].ssid, ap_records[i].primary, ap_records[i].rssi);
    }
}


///------------------------------------------------------------------------------------------------------------------///
///--------------------------------------------------WiFi Setup------------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
void wifi_setup() {
    s_wifi_event_group = xEventGroupCreate();
    tcpip_adapter_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    //esp_netif_create_default_wifi_ap();
    //esp_netif_create_default_wifi_sta();

    wifi_init_config_t wifi_config = WIFI_INIT_CONFIG_DEFAULT(); //default configuration
    esp_event_handler_instance_t instance_any_id;
    esp_event_handler_instance_t instance_got_ip;
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT,
                                                        ESP_EVENT_ANY_ID,
                                                        &wifi_event_handler,
                                                        NULL,
                                                        &instance_any_id));
    ESP_ERROR_CHECK(esp_event_handler_instance_register(IP_EVENT,
                                                        IP_EVENT_STA_GOT_IP,
                                                        &wifi_event_handler,
                                                        NULL,
                                                        &instance_got_ip));
    ESP_ERROR_CHECK(esp_wifi_init(&wifi_config));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_APSTA)); // in this mode it is both Access Point & Station
    ESP_ERROR_CHECK(esp_event_handler_instance_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, NULL, NULL));
    /////////////////////////////WiFi Configuration for Access Point//////////////////////////////
    wifi_config_t ap_config = {             //wifi access point
            .ap = {
                    .ssid = AP_SSID,
                    .password = AP_PASSWORD,
                    .max_connection = AP_MAX_CONN,
                    .channel = AP_CHANNEL,
                    .ssid_hidden = 0,
                    .authmode = WIFI_AUTH_WPA_WPA2_PSK, //make it a secure connection
            },
    };
    if (strlen(AP_PASSWORD) == 0) {
        ap_config.ap.authmode = WIFI_AUTH_OPEN; // if the hardcoded password is zero for length, than open Access Point.
    }
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_AP, &ap_config));
    /////////////////////////////WiFi Configuration for Station mode//////////////////////////////

    wifi_config_t sta_config = {            //wifi in station mode
            .sta = {
                    .ssid = STA_SSID,
                    .password = STA_PASSWORD,
                    .threshold.authmode = WIFI_AUTH_WPA2_PSK,
                    .pmf_cfg = {
                            .capable = true,
                            .required = false
                    },
            },
    };
    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &sta_config));
    //////////////////////WiFi start for Access Point & connect for Station///////////////////////
    ESP_ERROR_CHECK(esp_wifi_start());
    //ESP_LOGI(TAG, "wifi_AP finished. SSID:%s password:%s channel:%d",AP_SSID, AP_PASSWORD, AP_CHANNEL);
    //wifi_scan();
    vTaskDelay(3000 / portTICK_RATE_MS);
    //ESP_ERROR_CHECK(esp_wifi_connect()); // not necessary, it happens in event handler.
    //ESP_LOGI(TAG, "wifi_STA finished. SSID:%s password:%s channel:%d",STA_SSID, "********", sta_config.sta.channel);

    /* Waiting until either the connection is established (WIFI_CONNECTED_BIT) or connection failed for the maximum
     * number of re-tries (WIFI_FAIL_BIT). The bits are set by event_handler() (see above) */
    EventBits_t bits = xEventGroupWaitBits(s_wifi_event_group,
                                           WIFI_CONNECTED_BIT | WIFI_FAIL_BIT,
                                           pdFALSE,
                                           pdFALSE,
                                           portMAX_DELAY);

    /* xEventGroupWaitBits() returns the bits before the call returned, hence we can test which event actually
     * happened. */
    if (bits & WIFI_CONNECTED_BIT) {
        ESP_LOGI(TAG, "connected to ap SSID:%s password:%s",
                 STA_SSID, STA_PASSWORD);
    } else if (bits & WIFI_FAIL_BIT) {
        ESP_LOGI(TAG, "Failed to connect to SSID:%s, password:%s",
                 STA_SSID, STA_PASSWORD);
    } else {
        ESP_LOGE(TAG, "UNEXPECTED EVENT");
    }

    /* The event will not be processed after unregister */
    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP, instance_got_ip));
    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, instance_any_id));
    vEventGroupDelete(s_wifi_event_group);
    vTaskDelay(3000 / portTICK_RATE_MS);

}


/*
///------------------------------------------------------------------------------------------------------------------///
///------------------------------------------------TCP connection----------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
static void do_retransmit(const int sock)
{
    int len;
    char rx_buffer[128];

    do {
        len = recv(sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
        if (len < 0) {
            ESP_LOGE(TAG, "Error occurred during receiving: errno %d", errno);
        } else if (len == 0) {
            ESP_LOGW(TAG, "Connection closed");
        } else {
            rx_buffer[len] = 0; // Null-terminate whatever is received and treat it like a string
            ESP_LOGI(TAG, "Received %d bytes: %s", len, rx_buffer);

            // send() can return less bytes than supplied length.
            // Walk-around for robust implementation.
            int to_write = len;
            while (to_write > 0) {
                int written = send(sock, rx_buffer + (len - to_write), to_write, 0);
                if (written < 0) {
                    ESP_LOGE(TAG, "Error occurred during sending: errno %d", errno);
                }
                to_write -= written;
            }
        }
    } while (len > 0);
}

static void tcp_server_task(void *pvParameters)
{
    char addr_str[128];
    int addr_family = (int)pvParameters;
    int ip_protocol = 0;
    struct sockaddr_in6 dest_addr;

    if (addr_family == AF_INET) {
        struct sockaddr_in *dest_addr_ip4 = (struct sockaddr_in *)&dest_addr;
        dest_addr_ip4->sin_addr.s_addr = htonl(INADDR_ANY);
        dest_addr_ip4->sin_family = AF_INET;
        dest_addr_ip4->sin_port = htons(PORT);
        ip_protocol = IPPROTO_IP;
    } else if (addr_family == AF_INET6) {
        bzero(&dest_addr.sin6_addr.un, sizeof(dest_addr.sin6_addr.un));
        dest_addr.sin6_family = AF_INET6;
        dest_addr.sin6_port = htons(PORT);
        ip_protocol = IPPROTO_IPV6;
    }

    int listen_sock = socket(addr_family, SOCK_STREAM, ip_protocol);
    if (listen_sock < 0) {
        ESP_LOGE(TAG, "Unable to create socket: errno %d", errno);
        vTaskDelete(NULL);
        return;
    }

    int opt = 1;
    setsockopt(listen_sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
    //setsockopt(listen_sock, IPPROTO_IPV6, IPV6_V6ONLY, &opt, sizeof(opt));

    ESP_LOGI(TAG, "Socket created");

    int err = bind(listen_sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
    if (err != 0) {
        ESP_LOGE(TAG, "Socket unable to bind: errno %d", errno);
        ESP_LOGE(TAG, "IPPROTO: %d", addr_family);
        goto CLEAN_UP;
    }
    ESP_LOGI(TAG, "Socket bound, port %d", PORT);

    err = listen(listen_sock, 1);
    if (err != 0) {
        ESP_LOGE(TAG, "Error occurred during listen: errno %d", errno);
        goto CLEAN_UP;
    }

    while (1) {

        ESP_LOGI(TAG, "Socket listening");

        struct sockaddr_storage source_addr; // Large enough for both IPv4 or IPv6
        socklen_t addr_len = sizeof(source_addr);
        int sock = accept(listen_sock, (struct sockaddr *)&source_addr, &addr_len);
        if (sock < 0) {
            ESP_LOGE(TAG, "Unable to accept connection: errno %d", errno);
            break;
        }

        // Convert ip address to string
        if (source_addr.ss_family == PF_INET) {
            inet_ntoa_r(((struct sockaddr_in *)&source_addr)->sin_addr, addr_str, sizeof(addr_str) - 1);
        } else if (source_addr.ss_family == PF_INET6) {
            inet6_ntoa_r(((struct sockaddr_in6 *)&source_addr)->sin6_addr, addr_str, sizeof(addr_str) - 1);
        }
        ESP_LOGI(TAG, "Socket accepted ip address: %s", addr_str);

        do_retransmit(sock);

        shutdown(sock, 0);
        close(sock);
    }

    CLEAN_UP:
    close(listen_sock);
    vTaskDelete(NULL);
}*/


///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {

    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_netif_init());


    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(CONFIG_LED_PIN, false);
    wifi_setup();
    vTaskDelay(3000 / portTICK_RATE_MS);
    ESP_LOGI(TAG,"YOU HAVE MADE IT TRUE THE WIFI SETUP");
    //xTaskCreate(tcp_server_task, "tcp_server", 4096, (void*)AF_INET, 5, NULL);
    gpio_set_level(CONFIG_LED_PIN, true);
    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }
}



