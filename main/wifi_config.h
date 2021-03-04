//
// Created by bert on 2/03/21.
//

#ifndef TEST_PROJECT_WIFI_CONFIG_H
#define TEST_PROJECT_WIFI_CONFIG_H



#define STA_SSID "NETGEAR89"
#define STA_PASSWORD "Bou15Ele"
#define EXAMPLE_ESP_MAXIMUM_RETRY  1000
#define WIFI_CONNECTED_BIT BIT0
#define WIFI_FAIL_BIT      BIT1

#define AP_SSID "ESP32_AP_WIFI"
#define AP_PASSWORD "password1234"
#define AP_MAX_CONN 4
#define AP_CHANNEL 0


void wifi_setup_ap();

void wifi_setup_sta();

void wifi_setup();

void wifi_event_handler(void* arg, esp_event_base_t event_base,
                               int32_t event_id, void* event_data);
void wifi_scan();
#endif //TEST_PROJECT_WIFI_CONFIG_H
