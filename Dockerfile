FROM alpine:3.15.3
RUN apk update && apk add nginx nginx-mod-http-image-filter && rm -rf /var/cache/apk/*

RUN rm -v /etc/nginx/nginx.conf && \
  echo "daemon off;" >> /etc/nginx/nginx.conf && \
  mkdir -p /var/cache/nginx/images

EXPOSE 80

COPY html/images /var/www/html/

COPY nginx.conf /etc/nginx/
RUN nginx -t

CMD ["/usr/sbin/nginx"]