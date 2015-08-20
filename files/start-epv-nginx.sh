#!/bin/bash

sed -i "s/%EPV_SERVER_PORT_8080_TCP_PORT%/${EPV_SERVER_PORT_8080_TCP_PORT}/" /etc/nginx/conf.d/epvrk.estimatedplacentalvolume.com.conf

cat /etc/nginx/conf.d/epvrk.estimatedplacentalvolume.com.conf

nginx -g "daemon off;"
