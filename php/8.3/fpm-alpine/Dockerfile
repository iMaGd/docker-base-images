FROM php:8.3-fpm-alpine

# Install system dependencies
RUN apk add --update --no-cache \
    bash \
    curl \
    icu-dev \
    libxml2-dev \
    libzip-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    libwebp-dev \
    freetype-dev \
    zip \
    unzip \
    pkgconfig \
    zlib-dev \
    libtool \
    libxml2-dev \
    mariadb-dev \
    oniguruma-dev \
    jpegoptim \
    optipng \
    pngquant \
    gifsicle

# Install PHP extensions
RUN docker-php-ext-install bcmath \
    exif \
    intl \
    mbstring \
    pcntl \
    zip \
    xml \
    opcache \
    pdo \
    pdo_mysql

# Add Imagick library
RUN apk add --update --no-cache \
    git \
    imagemagick \
    imagemagick-dev \
    gcc \
    g++ \
    make \
    autoconf \
    pkgconfig && \
    git clone https://github.com/Imagick/imagick.git --depth 1 /tmp/imagick && \
    cd /tmp/imagick && \
    phpize && \
    ./configure && \
    make && \
    make install && \
    docker-php-ext-enable imagick && \
    apk del git gcc g++ make autoconf pkgconfig imagemagick-dev && \
    rm -rf /var/cache/apk/* /tmp/imagick

# # Install PHP extensions
# RUN docker-php-source extract
# RUN docker-php-ext-configure zip
# RUN docker-php-ext-configure gd \
#     --with-freetype \
#     --with-jpeg \
#     --with-webp
# RUN docker-php-ext-install gd

# Cleanup
RUN docker-php-source delete
RUN rm -rf /var/lib/apk/lists/* /tmp/* /var/tmp/* && rm -rf /var/cache/apk/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# PHP-FPM tweaks
COPY ./php-fpm.conf /usr/local/etc/php-fpm.d/xx-custom.conf

# PHP INI tweaks
COPY ./php.ini /usr/local/etc/php/conf.d/xx-custom.ini

# Set working directory
WORKDIR /var/www

# Set proper permissions
RUN chown -R www-data:www-data /var/www

# Expose FPM port
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
