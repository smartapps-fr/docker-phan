FROM php:7.3-cli
MAINTAINER Damien Debin <damien.debin@smartapps.fr>

RUN pecl install ast-1.0.1 &&\
    echo 'extension=ast.so' > "$PHP_INI_DIR/php.ini" &&\
    curl -sSL https://github.com/phan/phan/releases/download/1.2.5/phan.phar -o /usr/local/bin/phan && chmod +x /usr/local/bin/phan &&\
    rm -rf /tmp/* /var/tmp/* /var/log/*

ADD run.sh run.sh
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]