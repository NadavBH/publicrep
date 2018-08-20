FROM ubuntu:1604
RUN apt-get update -y && apt-get upgrade -y && apt install iputils-ping -y && apt install openssh-server -y
RUN apt-get install python3 python3-pip -y
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
COPY index.html /usr/share/nginx/html
WORKDIR /etc/nginx

EXPOSE 80 443 22