#!/bin/sh

cd /hugegraph-server

#Define cleanup procedure
cleanup() {
    echo "Stopping hugegraph server...."
    bin/stop-hugegraph.sh
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

bin/init-store.sh
bin/start-hugegraph.sh
tail -f logs/hugegraph-server.log