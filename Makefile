
build:
	docker build -t robbymilo/nginx-image-resizer .

run:
	docker run -p 3008:80 -v $(PWD)/html:/var/www/html robbymilo/nginx-image-resizer

stop:
	docker stop nginx-image-resizer