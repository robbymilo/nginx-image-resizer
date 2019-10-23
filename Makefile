
build:
	docker build -t nginx-image-resizer .

run:
	docker run -p 3008:80 -v $(PWD)/html:/var/www/html nginx-image-resizer

stop:
	docker stop nginx-image-resizer