//
// Created by bert on 10/03/21.
//

#include "I-O_manager.h"
#include "config.h"

_Noreturn void led_manager()
{
    ESP_LOGI(TAG, "Led_manager task is running in different thread...");
    bool toggle = false;
    while(1)
    {
        if (led_mutex != NULL){

            if(xSemaphoreTake(led_mutex, portMAX_DELAY) == pdTRUE )
            {
                toggle = 1 - toggle;
                gpio_set_level(CONFIG_LED_ONBOARD, toggle);
            }
            else
            {
                // We could not obtain the semaphore and can therefore not access
                // the shared resource safely.
                ESP_LOGI(TAG, "%lld : Mutex_TOGGLE timeout...", esp_timer_get_time());
            }
        }
    }
}

