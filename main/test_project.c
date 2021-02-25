#include <complex.h>
#include <argz.h>
#include <stdio.h>
#include <esp_expression_with_stack.h>
#include "freertos/task.h"
#include "freertos/FreeRTOS.h"
#include "driver/gpio.h"            //io pins configuration
#include "esp_log.h"                //logging
#include "esp_event_loop.h"
#include "esp_wifi.h"               //wifi
#include "nvs_flash.h"              //wifi

#define CONFIG_LED_PIN GPIO_NUM_4
#define AP_SSID "ESP_AP_WIFI"
#define AP_PASSWORD "123456789"
#define AP_MAX_CONN 4
#define AP_CHANNEL 0
#define STA_SSID "NETGEAR89"
#define STA_PASSWORD "Bou15Ele"

void wifi_scan()
{
    wifi_scan_config_t scan_config = {
            .ssid = 0,
            .bssid = 0,
            .channel = 0,
            .show_hidden = true
    };//name of the network //MAC address of Acces Point (AP) //which channel the broadcast is on//if true ESP will write hidden networks on the terminal.
    printf("Start scanning...\n");
    ESP_ERROR_CHECK(esp_wifi_scan_start(&scan_config, true)); // first parameters, here the data will be stored.
    printf("Completed!\n");
    gpio_set_level(CONFIG_LED_PIN, true);
    uint16_t ap_num;
    wifi_ap_record_t ap_records[20]; // maximum amount of networks that will be stored
    ESP_ERROR_CHECK(esp_wifi_scan_get_ap_records(&ap_num, ap_records));

    printf("Found %d acces points: \n", ap_num);
    printf("|                  SSID           |   CHANNEL  |   RSSI\n\n");
    for(int i=0; i<ap_num; i++)
    {
        printf("%32s  |   %7d  |   %4d\n", ap_records[i].ssid, ap_records[i].primary, ap_records[i].rssi);
    }
}

_Noreturn void app_main(void) {
    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    ESP_ERROR_CHECK(nvs_flash_init());
    tcpip_adapter_init();
    wifi_init_config_t wifi_config = WIFI_INIT_CONFIG_DEFAULT(); //default configuration
    ESP_ERROR_CHECK(esp_wifi_init(&wifi_config));
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_APSTA)); // in this mode it is both Access Point & Station
    wifi_config_t ap_config = {             //wifi access point
            .ap = {
                    .ssid = AP_SSID,
                    .password = AP_PASSWORD,
                    .max_connection = AP_MAX_CONN,
                    .channel = AP_CHANNEL,
                    .ssid_hidden = 0,
            },
    };
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_AP, &ap_config));

    wifi_config_t sta_config = {            //wifi in station mode
            .sta = {
                    .ssid = STA_SSID,
                    .password = STA_PASSWORD
            },
    };
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &sta_config));


    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_ERROR_CHECK(esp_wifi_connect());


    gpio_set_level(CONFIG_LED_PIN, false);
    vTaskDelay(3000 / portTICK_RATE_MS);
    wifi_scan();
    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }
}


    /*
    gpio_pad_select_gpio(CONFIG_BUTTON_PIN);
    gpio_pad_select_gpio(CONFIG_LED_PIN);

    // set the correct direction
    gpio_set_direction(CONFIG_BUTTON_PIN,GPIO_MODE_INPUT);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);

    // enable interupt on falling (1->0) edge of buttonpin
    gpio_set_intr_type(CONFIG_BUTTON_PIN,GPIO_INTR_NEGEDGE);

    // Install the driver's GPIO ISR handler service, which allows per-pin GPIO interrupt handlers.
    // install ISR service with default configuration
    gpio_install_isr_service(ESP_INT_FLAG_DEFAULT);

    // attach the interrupt service routine
    gpio_isr_handler_add(CONFIG_BUTTON_PIN, button_isr_handler, NULL);

    // create and start stats task
    xTaskCreate( button_task, "button_task", 4096, NULL, 10, &ISR);
    */



/*
#define ESP_INT_FLAG_DEFAULT 0
#define CONFIG_BUTTON_PIN GPIO_NUM_36


TaskHandle_t ISR = NULL;

void IRAM_ATTR button_isr_handler(void *arg)
{
    xTaskResumeFromISR(ISR);
}

_Noreturn void button_task(void *arg)
{
    bool led_status = false;
    while(1)
    {
        vTaskSuspend(NULL);
        led_status = !led_status;
        gpio_set_level(CONFIG_LED_PIN, led_status);
        printf("Button pressed!!\n");
    }
}
*/
