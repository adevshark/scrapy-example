#!/bin/sh

cd "$(dirname "$0")"
cd ../ucbc/

kill -9 `cat ucbc.pid`

nohup scrapy crawl UCBC && scrapy crawl UCBC2 > /dev/null 2>&1 & echo $! > ucbc.pid

echo "running ucbc"

now=$(date +"%Y%m%d")
readonly LOGFILE="UCBC_$now.log"
echo "log file name is $LOGFILE"
tail -f "./$LOGFILE"
