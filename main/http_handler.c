//
// Created by bert on 4/03/21.
//

#include "http_handler.h"
#include "config.h"
#include "esp_http_client.h"
#include "esp_tls.h"

esp_err_t http_event_handle(esp_http_client_event_t *evt)
{
    switch(evt->event_id) {
        case HTTP_EVENT_ERROR:
            ESP_LOGI(TAG, "HTTP_EVENT_ERROR");
            break;
        case HTTP_EVENT_ON_CONNECTED:
            ESP_LOGI(TAG, "HTTP_EVENT_ON_CONNECTED");
            break;
        case HTTP_EVENT_HEADER_SENT:
            ESP_LOGI(TAG, "HTTP_EVENT_HEADER_SENT");
            break;
        case HTTP_EVENT_ON_HEADER:
            ESP_LOGI(TAG, "HTTP_EVENT_ON_HEADER");
            printf("%.*s", evt->data_len, (char*)evt->data);
            break;
        case HTTP_EVENT_ON_DATA:
            ESP_LOGI(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            if (!esp_http_client_is_chunked_response(evt->client)) {
                printf("%.*s", evt->data_len, (char*)evt->data);
            }

            break;
        case HTTP_EVENT_ON_FINISH:
            ESP_LOGI(TAG, "HTTP_EVENT_ON_FINISH");
            break;
        case HTTP_EVENT_DISCONNECTED:
            ESP_LOGI(TAG, "HTTP_EVENT_DISCONNECTED");
            break;
    }
    return ESP_OK;
}

void http_task(int id, double value)
{
    char *query = NULL;
    asprintf(&query, "ID : %d\nVALUE : %f", id, value);

    esp_http_client_config_t http_config = {
            .url = "https://esptest32.free.beeceptor.com",
            .transport_type = HTTP_TRANSPORT_OVER_SSL,
            .event_handler = http_event_handle,
    };
    esp_http_client_handle_t client = esp_http_client_init(&http_config);
    // first request
    esp_err_t err = esp_http_client_perform(client);
    if (err == ESP_OK) {
        ESP_LOGI(TAG, "Status = %d, content_length = %d",
                 esp_http_client_get_status_code(client),
                 esp_http_client_get_content_length(client));
    }
    // second request
    esp_http_client_set_url(client, "https://esptest32.free.beeceptor.com");
    esp_http_client_set_method(client, HTTP_METHOD_POST);
    esp_http_client_set_header(client, "Value", "123");
    esp_http_client_set_post_field(client, query, strlen(query));
    esp_http_client_perform(client);

    free(query);
    esp_http_client_cleanup(client);
    vTaskDelete(NULL);
}
