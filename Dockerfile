FROM alpine:3.19.1
RUN apk update && apk add --no-cache nginx nginx-mod-http-image-filter

RUN rm -v /etc/nginx/nginx.conf && \
  echo "daemon off;" >> /etc/nginx/nginx.conf && \
  mkdir -p /var/cache/nginx/images

EXPOSE 80

COPY html/images /var/www/html/

COPY nginx.conf /etc/nginx/
RUN nginx -t

CMD ["/usr/sbin/nginx"]