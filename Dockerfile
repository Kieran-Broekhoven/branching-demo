FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install -y php libapache2-mod-php php-mysql apache2
RUN rm -f /var/www/html/index.html
COPY ./ /var/www/html/
EXPOSE 80

CMD apachectl -D FOREGROUND

