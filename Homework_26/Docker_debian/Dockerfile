FROM debian:11

RUN apt-get update && apt-get install -y \
    nginx \
    tree \
    curl

RUN mkdir /opt/www

COPY ./index.html /opt/www/index.html

COPY --chown=root:root ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8085

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]

