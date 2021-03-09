//
// Created by bert on 4/03/21.
//

#ifndef TEST_PROJECT_WIFI_PROV_H
#define TEST_PROJECT_WIFI_PROV_H



void event_handler(void* arg, esp_event_base_t event_base,
                          int32_t event_id, void* event_data);
void wifi_init_sta(void);
void get_device_service_name(char *service_name, size_t max);
esp_err_t custom_prov_data_handler(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                   uint8_t **outbuf, ssize_t *outlen, void *priv_data);

#endif //TEST_PROJECT_WIFI_PROV_H
