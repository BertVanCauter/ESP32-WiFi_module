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

#define MISO GPIO_NUM_19
#define MOSI GPIO_NUM_18
#define CLK GPIO_NUM_5
#define CS GPIO_NUM_22

#define DMA_CHAN 2


void init_io()
{
    // Initialize I/O pins
    gpio_pad_select_gpio(CONFIG_LED_ONBOARD);
    gpio_pad_select_gpio(CONFIG_BUTTON);
    // select mode of I/O pins
    gpio_set_direction(CONFIG_LED_ONBOARD, GPIO_MODE_OUTPUT);
    gpio_set_direction(CONFIG_BUTTON, GPIO_MODE_INPUT);
    // set initial values
    gpio_set_level(CONFIG_LED_ONBOARD, false);
    gpio_set_pull_mode(CONFIG_BUTTON, GPIO_PULLDOWN_ONLY);

}

void spi_pre_transfer_callback(spi_transaction_t *t)
{

}

void init_spi()
{
    /*spi_device_handle_t spi;
    spi_bus_config_t buscfg = {
            .miso_io_num = MISO,
            .mosi_io_num = MOSI,
            .sclk_io_num = CLK,
            .quadwp_io_num = 1,
            .quadhd_io_num = 1,
            .max_transfer_sz = 32
    };
    spi_device_interface_config_t  devcnf = {
            .clock_speed_hz = 10*1000*1000, // 10MHz
            .mode = 0,
            .spics_io_num = CS,
            .queue_size = 10,
            .pre_cb = spi_pre_transfer_callback,
    };
    ESP_ERROR_CHECK(spi_bus_initialize(HSPI_HOST, &buscfg, DMA_CHAN));
    ESP_ERROR_CHECK(spi_bus_add_device(HSPI_HOST, &devcnf, &spi));
    ESP_LOGI(TAG, "The SPI initialization was successful!");*/
}


///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    // Initialize mutex
    led_mutex_blink = xSemaphoreCreateBinary();

    // Initialize i/O for the LED's
    init_io();

    // Initialize SPI
    //init_spi();

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

        data_t data;
        data.sensorId = 1;
        data.value = 157;
        xQueueSendToBack(buffer, &data, (TickType_t) 0);

        //vTaskDelay((6000 / portTICK_RATE_MS)); // just to test what the program will do when there is a long time
        data.sensorId = 2;                               // no data in the buffer!
        data.value = 248;
        xQueueSendToBack(buffer, &data, (TickType_t) 0);

        data.sensorId = 3;
        data.value = 396;
        xQueueSendToBack(buffer, &data, (TickType_t) 0);
    }

    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }

}



