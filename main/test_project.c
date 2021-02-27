#include <complex.h>
#include <argz.h>
#include <stdio.h>
#include <stdlib.h>
#include <esp_expression_with_stack.h>
#include <string.h>
#include "freertos/task.h"
#include "freertos/FreeRTOS.h"
#include "driver/gpio.h"            //io pins configuration
#include "esp_log.h"                //logging
#include "esp_event.h"
#include "esp_wifi.h"               //wifi
#include "nvs_flash.h"              //wifi

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>

#define CONFIG_LED_PIN GPIO_NUM_4

#define AP_SSID "ESP32_AP_WIFI"
#define AP_PASSWORD "password1234"
#define AP_MAX_CONN 4
#define AP_CHANNEL 0

#define PORT 3333

#define STA_SSID "NETGEAR89"
#define STA_PASSWORD "Bou15Ele"

#define TAG "test_project"


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
    gpio_set_level(CONFIG_LED_PIN, true);
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
    tcpip_adapter_init();
    wifi_init_config_t wifi_config = WIFI_INIT_CONFIG_DEFAULT(); //default configuration
    ESP_ERROR_CHECK(esp_wifi_init(&wifi_config));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_APSTA)); // in this mode it is both Access Point & Station
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
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_AP, &ap_config));
    /////////////////////////////WiFi Configuration for Station mode//////////////////////////////
    wifi_config_t sta_config = {            //wifi in station mode
            .sta = {
                    .ssid = STA_SSID,
                    .password = STA_PASSWORD
            },
    };
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &sta_config));
    //////////////////////WiFi start for Access Point & connect for Station///////////////////////
    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_LOGI(TAG, "wifi_AP finished. SSID:%s password:%s channel:%d",AP_SSID, AP_PASSWORD, AP_CHANNEL);
    wifi_scan();
    ESP_ERROR_CHECK(esp_wifi_connect());
    ESP_LOGI(TAG, "wifi_STA finished. SSID:%s password:%s channel:%d",STA_SSID, "********", sta_config.sta.channel);
    vTaskDelay(3000 / portTICK_RATE_MS);
}


///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    ESP_ERROR_CHECK(nvs_flash_init());
    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(CONFIG_LED_PIN, false);
    wifi_setup();

    //xTaskCreate(tcp_server_task, "tcp_server", 4096, (void*)NULL, 5,
                //NULL);
    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }
}



