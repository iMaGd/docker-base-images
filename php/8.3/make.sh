#!/bin/bash

# Local test
# docker build -t depicter/php:8.3-fpm-alpine --squash --platform linux/arm64 ./fpm-alpine

docker buildx create --name builderx --use
docker buildx inspect builderx --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 -t depicter/php:8.3-fpm-alpine --push ./fpm-alpine
