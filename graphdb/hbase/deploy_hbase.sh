#!/bin/sh
set -ex

apt-get update -y

wget https://downloads.apache.org/hbase/2.2.4/hbase-2.2.4-bin.tar.gz
tar zxvf hbase-2.2.4-bin.tar.gz
mv hbase-2.2.4 hbase
rm hbase-2.2.4-bin.tar.gz

cd hbase