#!/bin/bash
set -ex
mkdir -p logs
bin/start-hbase.sh
tail -f logs/hbase--master*.out