#!/bin/bash

/sbin/ip addr add 172.17.0.12 dev eth0;
/etc/init.d/memcached start
/etc/init.d/postgresql start
/etc/init.d/nginx start
/etc/init.d/redis-server start
su ritdemo -c 'source /bootstrap/start_app.sh'
while true; do sleep 1; done
