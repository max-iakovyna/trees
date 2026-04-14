#!/bin/bash

docker stop postgres_instance 2>/dev/null || true
docker rm postgres_instance 2>/dev/null || true

docker run -d \
    --name postgres_instance \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_DB=treesdb \
    -v "$(pwd):/workspace" \
    -p 5432:5432 \
    postgres:latest