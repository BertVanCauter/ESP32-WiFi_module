#include <stdio.h>
#include <stdlib.h>
#include <esp_expression_with_stack.h>


#include "config.h"
#include "wifi_config.h"
#include "tcp_server.h"
#include "http_handler.h"


void wifi_manager()
{
    while(1)
    {
        if(mutex_toggle != NULL)
        {
            if(xSemaphoreTake(mutex_toggle,portMAX_DELAY)==pdTRUE)
            {
                wifi_setup_sta();
                ESP_LOGI(TAG, "Wifi switch to Station mode");
                break;
            }
            else
            {
                ESP_LOGI(TAG, "Mutex toggle timeout");
            }
        }

    }
}

///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    //initialize mutex
    mutex_toggle = xSemaphoreCreateBinary();

    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    //setup wifi as access point
    wifi_setup_ap();
    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(CONFIG_LED_PIN, false);
    ESP_LOGI(TAG,"YOU HAVE MADE IT TRUE THE WIFI SETUP");
    xTaskCreate(wifi_manager, "wifi_manager", 4096, NULL, 5, NULL);
    xTaskCreate(tcp_server_task, "tcp_server", 4096, (void*)AF_INET, 5, NULL);
    xTaskCreate(https_request_task, "https_get_task", 8192, NULL, 5, NULL);

    gpio_set_level(CONFIG_LED_PIN, true);
    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }
}



