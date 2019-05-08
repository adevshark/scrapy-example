#!/bin/sh

cd "$(dirname "$0")"
cd ../abe/
nohup scrapy crawl abe &
