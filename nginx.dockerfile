FROM nginx:1.22.0
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/html
