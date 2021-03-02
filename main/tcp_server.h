//
// Created by bert on 2/03/21.
//

#ifndef TEST_PROJECT_TCP_SERVER_H
#define TEST_PROJECT_TCP_SERVER_H

#include "lwip/sockets.h"

void do_retransmit(const int sock);
void tcp_server_task(void *pvParameters);

#endif //TEST_PROJECT_TCP_SERVER_H
