#!/bin/bash

export running=$(ps aux | grep "redis-server 127.0.0.1:6250" | grep -v grep)

if [[ -z $running ]]; then
	echo -e "`date` - Dashboard redis not running. Restarting redis\n" >> /tmp/6250.log
	redis-server /var/www/misp-dashboard/config/6250.conf &
fi
