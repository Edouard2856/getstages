FROM ubuntu
RUN apt update && apt upgrade
RUN DEBIAN_FRONTEND=noninteractive apt -y install apache2 php php-mysql
cp -r geststages/* /var/www/html
EXPOSE 80
