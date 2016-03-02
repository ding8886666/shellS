#!/bin/bash
base_path='/home/work/var/log/'
log_path=$(date -d yesterday +"%Y%m")
day=$(date -d yesterday +"%d")
mkdir -p $base_path/$log_path
mv $base_path/cms.lianjia.access.log $base_path/$log_path/localhost.access_$day.log
killall nginx && /home/work/local/nginx-1.7.7/sbin/nginx

