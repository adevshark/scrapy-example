#!/bin/sh
cd ..

mkdir -p build

cd build
git clone git@github.com:Danielchernokalov88/isbn_scrapy.git 

# 
cp -u isbn_scrapy/abe/isbn/settings.prod.py isbn_scrapy/abe/isbn/settings.py 
rm isbn_scrapy/abe/isbn/settings.prod.py
rm isbn_scrapy/abe/isbn/settings.dev.py

# remove deploy script
rm isbn_scrapy/automation/deploy.sh

# tar
tar czvf isbn_scrapy.tgz isbn_scrapy

MY_PEM = "/Users/xiong/Documents/projects/scrapping/server_info/xiaogangEC2.pem"
# deploy
scp -i $MY_PEM isbn_scrapy.tgz centos@34.200.219.71:~/


# create a tarball of a git repository using git archive
# git archive --format=tar.gz -o ./build/isbn.tar.gz master


# cd ..
# rm -rf build