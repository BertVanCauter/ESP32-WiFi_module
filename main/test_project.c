#include <alloca.h>
#include <stdio.h>
#include <stdlib.h>
#include <esp_expression_with_stack.h>
#include <driver/ledc.h>
#include "freertos/queue.h"

#include "config.h"
#include "http_handler.h"
#include "WiFi_prov.h"
#include "I-O_manager.h"

#include "driver/spi_master.h"

void init_io()
{
    // Initialize I/O pins
    gpio_pad_select_gpio(CONFIG_LED_ONBOARD);
    // select mode of I/O pins
    gpio_set_direction(CONFIG_LED_ONBOARD, GPIO_MODE_OUTPUT);
    // set initial values
    gpio_set_level(CONFIG_LED_ONBOARD, false);
}

void init_spi()
{

}


///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    // Initialize mutex
    led_mutex_blink = xSemaphoreCreateBinary();

    // Initialize i/O for the LED's
    init_io();

    // led_manager_tasks
    xTaskCreate(led_manager, "led_manager", 8192, NULL, 5, NULL);
    xTaskCreate(led_blinker, "led_blinker", 8192, NULL, 5, NULL);

    // shared buffer created
    buffer = xQueueCreate(100, sizeof(data_t));
    if(buffer == 0)
    {
        ESP_LOGI(TAG, "The buffer is nog created");
    }

    // wifi provisioning!
    wifi_prov();
    /* Wait for Wi-Fi connection */
    xEventGroupWaitBits(wifi_event_group, WIFI_CONNECTED_BIT, false, true, portMAX_DELAY);


    /*----------------------------*/
    /* Start main application now */
    /*----------------------------*/
    //task that reads the buffer for incoming data and sending it to the database.
    xTaskCreate(http_task, "http_task", 8192, NULL, 5, NULL);

    for(int index = 0; index<1; index++) {
        double random_value;
        srand ( time ( NULL));
        random_value = (double)rand()/RAND_MAX*2.0;//float in range -1 to 1
        data_t data;
        data.sensorId = 1;
        data.value = random_value*100;
        xQueueSendToBack(buffer, &data, (TickType_t) 1);
        srand ( time ( NULL));
        random_value = (double)rand()/RAND_MAX/2.0;//float in range -1 to 1
        //vTaskDelay((6000 / portTICK_RATE_MS)); // just to test what the program will do when there is a long time
        data.sensorId = 2;                               // no data in the buffer!
        data.value = random_value*100;
        xQueueSendToBack(buffer, &data, (TickType_t) 1);
        srand ( time ( NULL));
        random_value = (double)rand()/RAND_MAX/2.0;//float in range -1 to 1
        data.sensorId = 3;
        data.value = random_value*100;
        xQueueSendToBack(buffer, &data, (TickType_t) 1);
    }

    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }

}



