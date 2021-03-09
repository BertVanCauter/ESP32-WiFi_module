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

/* Constants that aren't configurable in menuconfig */
#define WEB_SERVER "www.google.com"
#define WEB_PORT "443"
#define WEB_URL "http://a20fire2.studev.groept.be"

void https_get_request(esp_tls_cfg_t cfg);
void https_get_request_using_crt_bundle(void);
void https_request_task(void *pvparameters);
#endif //TEST_PROJECT_HTTP_HANDLER_H
