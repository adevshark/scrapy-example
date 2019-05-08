#!/bin/sh

cd "$(dirname "$0")"
cd ../abe/
nohup scrapy crawl abe  > /dev/null 2>&1 & echo $! > abe.pid

echo "running abe"

now=$(date +"%Y%m%d")
filename = "abe_$now.log"
echo "log file name is $filename"
tail -f abe/$filename
