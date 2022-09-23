FROM alpine:latest

RUN apk update && apk add \
    nginx \
    tree \
    curl 

RUN mkdir /opt/www

COPY --chown=nginx:nginx ./index.html /opt/www/index.html

COPY --chown=root:root ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8085

CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]
