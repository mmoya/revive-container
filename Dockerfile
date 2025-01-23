FROM ubuntu:24.04

RUN set -ex; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get -Vy --no-install-recommends install curl software-properties-common; \
    add-apt-repository ppa:ondrej/php; \
    apt-get -Vy --no-install-recommends install \
        php8.1-curl \
        php8.1-fpm \
        php8.1-gd \
        php8.1-intl \
        php8.1-mbstring \
        php8.1-mysqli \
        php8.1-xml  \
        php8.1-zip; \
    echo "[www]\nlisten = 9000" >/etc/php/8.1/fpm/pool.d/zz-listen-tcp.conf; \
    mkdir -p /var/www/html; \
    curl -L https://download.revive-adserver.com/revive-adserver-5.5.2.tar.gz \
        | tar --strip-components=1 -C /var/www/html -xz -f -; \
    apt clean; \
    rm -fr /var/lib/apt/lists/*

WORKDIR /var/www/html
CMD ["php-fpm8.1", "-F"]
