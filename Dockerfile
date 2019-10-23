FROM ubuntu
RUN apt-get update 
RUN apt-get install -y nginx nginx-extras
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

RUN nginx -v

# COPY ./files/ /var/www/html/

CMD ["/usr/sbin/nginx"]