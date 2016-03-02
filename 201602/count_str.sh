#!/bin/bash
log_path='/home/work/var/log/201602'
cd $log_path
filelist=$(ls)
count=0
for file in $filelist
do
if [ -f $file ]
then
echo $file
c=$(cat $file | grep 'GET /page/pagemanage/'| wc -l)
echo $c
count=$[$count+$c]
fi
done
echo count

