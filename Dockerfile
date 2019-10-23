FROM ubuntu
RUN apt-get update 
RUN apt-get install -y nginx nginx-extras
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir -p /var/cache/nginx/images

EXPOSE 80

RUN nginx -v

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

# COPY ./files/ /var/www/html/

CMD ["/usr/sbin/nginx"]