#!/bin/sh

cd "$(dirname "$0")"

docker run -it \
    -v "$(pwd)/data:/home/data" \
    -v "$(pwd)/backup:/home/backup" \
    alpine:latest \
    tar -zcvf "/home/backup/$(date '+%F').tar.gz" /home/data
