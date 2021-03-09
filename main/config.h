//
// Created by bert on 2/03/21.
//

#ifndef TEST_PROJECT_CONFIG_H
#define TEST_PROJECT_CONFIG_H

#include <complex.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "driver/gpio.h"            //io pins configuration
#include "esp_log.h"                //logging
#include "esp_event.h"
#include "esp_netif.h"
#include "esp_err.h"
#include "esp_wifi.h"               //wifi
#include "nvs_flash.h"              //wifi
#include <wifi_provisioning/manager.h>
#include <wifi_provisioning/scheme_softap.h>

#define CONFIG_LED_PIN GPIO_NUM_4
#define CONFIG_LED_ONBOARD GPIO_NUM_13
#define PORT 3333
#define TAG "test_project"
#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1
EventGroupHandle_t wifi_event_group;

SemaphoreHandle_t mutex_toggle;

void wifi_prov();

#endif //TEST_PROJECT_CONFIG_H
