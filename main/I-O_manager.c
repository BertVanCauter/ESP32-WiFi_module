//
// Created by bert on 10/03/21.
//

#include "I-O_manager.h"
#include "config.h"

bool blink = false;
bool toggle = false;
_Noreturn void led_manager()
{
    ESP_LOGI(TAG, "Led_manager task is running in different thread...");

    while(1)
    {
        if (led_mutex_blink != NULL)
        {
            if(xSemaphoreTake(led_mutex_blink, portMAX_DELAY) == pdTRUE )
            {
                blink = 1 - blink;
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

_Noreturn void led_blinker()
{
    while(1)
    {
        if(blink == true)
        {
            toggle = 1 - toggle;
            gpio_set_level(CONFIG_LED_ONBOARD, toggle);
        }
        else if (blink == false)
        {
            gpio_set_level(CONFIG_LED_ONBOARD, true);
        }
        vTaskDelay(250/ portTICK_RATE_MS); // decides blinking frequency

        if(gpio_get_level(CONFIG_BUTTON)==1) // button listener if button is pressed long enough chip will
        {                                             // restart and provision new netwokr
            ESP_ERROR_CHECK(nvs_flash_erase());
            esp_restart();
        }
    }
}

