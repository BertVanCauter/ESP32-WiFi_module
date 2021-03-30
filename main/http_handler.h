//
// Created by bert on 4/03/21.
//

#ifndef TEST_PROJECT_HTTP_HANDLER_H
#define TEST_PROJECT_HTTP_HANDLER_H

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/dns.h"
#include "esp_system.h"

#include "esp_tls.h"
#include "esp_crt_bundle.h"
#include "esp_http_client.h"
#include "esp_tls.h"

#define DB_URL "https://a20fire2.studev.groept.be/api/records"
void http_task();
esp_http_client_handle_t http_init_connection();
void http_post_request(int id, double value);
void http_close_connection(esp_http_client_handle_t client);


#endif //TEST_PROJECT_HTTP_HANDLER_H
