#!/bin/bash
dataDir="/home/work/data/"
`mkdir -p $dataDir` && cd $dataDir && rm *
MYSQL="mysql"
USER="prod"
PASS="123456"
PORT="5000"
HOST="172.30.0.20"

echo 'use lianjia;set charset utf8;SELECT *  from wenda_tag_level1 order by tag1_id desc' | $MYSQL -h $HOST -u $USER -P$PORT -p$PASS > $dataDir/wenda_tag1

#sort -n -k 3 -t $'\t' $dataDir/wenda_tag1

sort -n -k 3 -t $'\t' $dataDir/wenda_tag1 | awk -F"\t" '$1==4{print $0}' > $dataDir/wenda11
