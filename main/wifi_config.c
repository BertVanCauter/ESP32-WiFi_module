//
// Created by bert on 2/03/21.
//
#include "config.h"
#include "wifi_config.h"

int s_retry_num = 0;
EventGroupHandle_t s_wifi_event_group;


///------------------------------------------------------------------------------------------------------------------///
///--------------------------------------------------WiFi Setup------------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
void wifi_setup() {
    s_wifi_event_group = xEventGroupCreate();
    tcpip_adapter_init();
    //ESP_ERROR_CHECK(esp_event_loop_create_default());
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

void wifi_event_handler(void* arg, esp_event_base_t event_base,
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
