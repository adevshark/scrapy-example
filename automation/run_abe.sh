#!/bin/sh

cd "$(dirname "$0")"
cd ../abe/
nohup scrapy crawl abe > abe.pid &

echo "running abe"

