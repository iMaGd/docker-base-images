docker build -t depicter/php:8.3-fpm-alpine --squash --platform linux/amd64 ./fpm-alpine
docker push depicter/php:8.3-fpm-alpine

docker build -t depicter/php:8.3-fpm-alpine --squash --platform linux/arm64 ./fpm-alpine
docker push depicter/php:8.3-fpm-alpine
