//
// Created by bert on 4/03/21.
//

#include "http_handler.h"
#include "config.h"


_Noreturn void http_task()
{
    data_t data;
    while(1)
    {
        if(buffer != 0)
        {
            if(xQueueReceive(buffer, &data, (TickType_t) 10))
            {
                int id = data.sensorId;
                double value = data.value;
                http_post_request(id, value);
            }
        }
    }
}

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
            ESP_LOGI(TAG, "HTTP_EVENT_ON_HEADER, len=%d", evt->data_len);
            ESP_LOGI(TAG, "%.*s",evt->data_len, (char*)evt->data );
            //printf("%.*s", evt->data_len, (char*)evt->data);
            break;
        case HTTP_EVENT_ON_DATA:
            ESP_LOGI(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            ESP_LOGI(TAG, "%.*s",evt->data_len, (char*)evt->data );
            //if (!esp_http_client_is_chunked_response(evt->client)) {
            //    printf("%.*s", evt->data_len, (char*)evt->data);
            //}

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

esp_http_client_handle_t http_init_connection()
{
    esp_http_client_config_t http_config = {
            .url = DB_URL,
            .transport_type = HTTP_TRANSPORT_OVER_SSL,
            .event_handler = http_event_handle,

    };
    esp_http_client_handle_t client = esp_http_client_init(&http_config);
    return client;
}

void http_post_request(int id, double value)
{
    char *query = NULL;
    asprintf(&query, "{\"sensorId\":\"%d\",\"value\":\"%f\"}", id, value); //this is a way of sending JSON.

    esp_http_client_config_t http_config = {
            .url = DB_URL,
            .transport_type = HTTP_TRANSPORT_OVER_SSL,
            .event_handler = http_event_handle,

    };
    esp_http_client_handle_t client = esp_http_client_init(&http_config);

    esp_http_client_set_url(client, DB_URL);
    esp_http_client_set_method(client, HTTP_METHOD_POST);
    esp_http_client_set_header(client, "Content-Type", "application/json");
    esp_http_client_set_post_field(client, query, strlen(query));

    esp_http_client_perform(client);
    free(query);
    esp_http_client_cleanup(client);
}

void http_close_connection(esp_http_client_handle_t client)
{
    vTaskDelay(5000 / portTICK_RATE_MS);
    esp_http_client_cleanup(client);
}