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
#include "driver/spi_common.h"

#define PIN_NUM_MISO 25
#define PIN_NUM_MOSI 23
#define PIN_NUM_CLK  19
#define PIN_NUM_CS   22

#define PIN_NUM_DC   21
#define PIN_NUM_RST  18
#define PIN_NUM_BCKL 5



//---------------------------------SPI------------------------------------------//
void lcd_spi_pre_transfer_callback(spi_transaction_t *t)
{
    int dc=(int)t->user;
    gpio_set_level(PIN_NUM_DC, dc);
}
void init_spi()
{
    spi_device_handle_t spi;
    spi_bus_config_t buscfg={
            .miso_io_num=PIN_NUM_MISO,
            .mosi_io_num=PIN_NUM_MOSI,
            .sclk_io_num=PIN_NUM_CLK,
            .quadwp_io_num=-1,
            .quadhd_io_num=-1
    };
    spi_device_interface_config_t devcfg={
            .clock_speed_hz=10*1000*1000,               //Clock out at 10 MHz
            .mode=0,                                //SPI mode 0
            .spics_io_num=PIN_NUM_CS,               //CS pin
            .queue_size=7,                          //We want to be able to queue 7 transactions at a time
            .pre_cb=lcd_spi_pre_transfer_callback,  //Specify pre-transfer callback to handle D/C line
    };
    ESP_ERROR_CHECK(spi_bus_initialize(HSPI_HOST, &buscfg, 1));
    //Attach the LCD to the SPI bus
    ESP_ERROR_CHECK(spi_bus_add_device(HSPI_HOST, &devcfg, &spi));
}

void init_io()
{
    // Initialize I/O pins
    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_pad_select_gpio(CONFIG_LED_ONBOARD);

    // select mode of I/O pins
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_direction(CONFIG_LED_ONBOARD, GPIO_MODE_OUTPUT);

    // set initial values
    gpio_set_level(CONFIG_LED_PIN, false);
    gpio_set_level(CONFIG_LED_ONBOARD, false);
}

///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    // Initialize mutex
    led_mutex = xSemaphoreCreateBinary();

    // Initialize i/O for the LED's
    init_io();

    // Initialize I/O pins for SPI-master
    init_spi();

    // led_manager_tasks
    xTaskCreate(led_manager, "led_manager", 8192, NULL, 5, NULL);

    // wifi provisioning!
    wifi_prov();

    /* Wait for Wi-Fi connection */
    xEventGroupWaitBits(wifi_event_group, WIFI_CONNECTED_BIT, false, true, portMAX_DELAY);
    ESP_LOGI(TAG,"YOU HAVE MADE IT TRUE THE WIFI SETUP");
    gpio_set_level(CONFIG_LED_PIN, true);


    /* Start main application now */
    // http initialize connection
    esp_http_client_handle_t client = http_init_connection();
    // http send out POST requests with data
    http_post_request(client, 1, 600);
    http_post_request(client, 2, 500);
    http_post_request(client, 3, 700);
    // close the http connection
    http_close_connection(client);

    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }

}



