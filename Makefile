build:
	docker build -t robbymilo/nginx-image-resizer .

run:
	docker run -p 3000:80 -v $(PWD)/html:/var/www/html robbymilo/nginx-image-resizer
