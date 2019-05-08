#!/bin/sh

cd "$(dirname "$0")"
cd ../abe/

kill -9 `cat abe.pid`

nohup scrapy crawl abe  > /dev/null 2>&1 & echo $! > abe.pid

echo "running abe"

now=$(date +"%Y%m%d")
echo $now
readonly LOGFILE="abe_$now.log"
echo "log file name is $LOGFILE"
tail -f "abe/$LOGFILE"
