#include <stdio.h>
#include <stdlib.h>
#include <esp_expression_with_stack.h>


#include "config.h"
#include "http_handler.h"
#include "WiFi_prov.h"


void wifi_prov()
{
    ESP_ERROR_CHECK(nvs_flash_erase()); // to clear the memory of all networks... BETTER: not every restart!
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        /* NVS partition was truncated
         * and needs to be erased */
        ESP_ERROR_CHECK(nvs_flash_erase());

        /* Retry nvs_flash_init */
        ESP_ERROR_CHECK(nvs_flash_init());
    }

    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    wifi_event_group = xEventGroupCreate();
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_PROV_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &event_handler, NULL));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &event_handler, NULL));

    esp_netif_create_default_wifi_sta();
    esp_netif_create_default_wifi_ap();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));
    wifi_prov_mgr_config_t config = {
            .scheme = wifi_prov_scheme_softap,
            .scheme_event_handler = WIFI_PROV_EVENT_HANDLER_NONE,
    };
    ESP_ERROR_CHECK(wifi_prov_mgr_init(config));
    bool provisioned = false;
    ESP_ERROR_CHECK(wifi_prov_mgr_is_provisioned(&provisioned));
    if (!provisioned) {
        ESP_LOGI(TAG, "Starting provisioning");
        char service_name[12];
        get_device_service_name(service_name, sizeof(service_name));
        wifi_prov_security_t security = WIFI_PROV_SECURITY_1;
        const char *pop = "abcd1234"; // Here we can set what we want!
        const char *service_key = NULL;
        wifi_prov_mgr_endpoint_create("custom-data");
        ESP_ERROR_CHECK(wifi_prov_mgr_start_provisioning(security, pop, service_name, service_key));
        wifi_prov_mgr_endpoint_register("custom-data", custom_prov_data_handler, NULL);

    } else {
        ESP_LOGI(TAG, "Already provisioned, starting Wi-Fi STA");
        wifi_prov_mgr_deinit();
        wifi_init_sta();
    }
}





///------------------------------------------------------------------------------------------------------------------///
///---------------------------------------------------MAIN PROGRAM---------------------------------------------------///
///------------------------------------------------------------------------------------------------------------------///
_Noreturn void app_main(void) {
    gpio_pad_select_gpio(CONFIG_LED_PIN);
    gpio_pad_select_gpio(CONFIG_LED_ONBOARD);
    gpio_set_direction(CONFIG_LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_direction(CONFIG_LED_ONBOARD, GPIO_MODE_OUTPUT);
    gpio_set_level(CONFIG_LED_PIN, false);
    gpio_set_level(CONFIG_LED_ONBOARD, false);

    // wifi provisioning!
    wifi_prov();

    /* Wait for Wi-Fi connection */
    xEventGroupWaitBits(wifi_event_group, WIFI_CONNECTED_BIT, false, true, portMAX_DELAY);

    /* Start main application now */
    ESP_LOGI(TAG, "Hello World!");
    gpio_set_level(CONFIG_LED_PIN, true);
    ESP_LOGI(TAG,"YOU HAVE MADE IT TRUE THE WIFI SETUP");
    //xTaskCreate(https_request_task, "https_get_task", 8192, NULL, 5, NULL);




    while (1) {
        vTaskDelay(3000 / portTICK_RATE_MS);
    }
}



