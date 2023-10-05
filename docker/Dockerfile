FROM php:8.1-apache

LABEL maintainer="Douglas S. Santos"

ARG uid

ENV APP_DIR /var/www

RUN mkdir -p $APP_DIR

WORKDIR /var/www

ENV TZ=UTC

EXPOSE 80

VOLUME $APP_DIR

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y git zip curl sudo unzip libicu-dev libbz2-dev libpng-dev libjpeg-dev libmcrypt-dev \
    libreadline-dev libfreetype6-dev g++ libsodium-dev libzip-dev libonig-dev libpq-dev net-tools nano \
    supervisor libcap2-bin dnsutils librsvg2-bin fswatch libc-client-dev libkrb5-dev

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]

RUN a2enmod rewrite headers

#RUN pecl install xdebug-3.1.5 \
#    docker-php-ext-enable xdebug

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql

RUN docker-php-ext-install \
    bz2 \
    intl \
    iconv \
    bcmath \
    opcache \
    calendar \
    mbstring \
    pdo \
    pdo_mysql \
    pdo_pgsql \
    mysqli \
    pgsql \
    gd \
    sodium \
    zip 

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN pecl install redis && docker-php-ext-enable redis
    
COPY ./php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt install -y curl

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

ARG NODE_VERSION
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install $NODE_VERSION
RUN . "$NVM_DIR/nvm.sh" && nvm use v$NODE_VERSION
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v$NODE_VERSION
ENV PATH="$NVM_DIR/versions/node/v$NODE_VERSION/bin/:${PATH}"
RUN node --version
RUN npm --version

# RUN deluser devuser
# RUN rm -R /home/devuser/

RUN useradd -G www-data,root -u $uid -d /home/devuser devuser 2> /dev/null

RUN mkdir -p /home/devuser/.composer && chown -R devuser:www-data /home/devuser
COPY --chown=devuser:www-data . /var/www

#RUN git clone https://github.com/douglasssantos/LampResources.git /home/devuser/LampResources

#RUN chmod +x /home/devuser/LampResources/lamp

#RUN cp -v /home/devuser/LampResources/lamp /usr/local/bin/lamp


#COPY php/php.ini /etc/php/$PHP_VERSION/cli/conf.d/99-sail.ini

