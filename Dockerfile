FROM alpine:3.15.3
RUN apk update && apk add nginx nginx-mod-http-image-filter && rm -rf /var/cache/apk/*

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf && \
  mkdir -p /var/cache/nginx/images

EXPOSE 80

RUN nginx -v

COPY html/images /var/www/html/

CMD ["/usr/sbin/nginx"]