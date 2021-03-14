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


//Constants that aren't configurable in menuconfig

void http_task(int id, double value);



#endif //TEST_PROJECT_HTTP_HANDLER_H
