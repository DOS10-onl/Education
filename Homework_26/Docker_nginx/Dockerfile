FROM nginx:latest

RUN mkdir /opt/www

COPY ./index.html /opt/www/index.html

COPY --chown=root:root ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8085
