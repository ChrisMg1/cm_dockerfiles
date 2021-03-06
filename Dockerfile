FROM resin/rpi-raspbian:jessie-20160831
RUN apt-get update; apt-get install -y nginx
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
