FROM debian:9

RUN apt-get update

RUN apt-get install apache2 -y

RUN echo "Welcome" >> /var/www/html/index.html

COPY /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
