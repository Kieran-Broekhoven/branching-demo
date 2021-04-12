FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
#ENV APACHE_DOCUMENT_ROOT /var/www/php

RUN apt-get update -y && apt-get install -y php libapache2-mod-php php-mysql apache2
RUN ls -l /var/www/html
RUN rm -f /var/www/html/index.html
COPY mycode/ /var/www/html/
EXPOSE 80

CMD apachectl -D FOREGROUND

