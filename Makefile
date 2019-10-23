build:
	docker build -t nginx-images2 .

run:
	docker run -p 3008:80 -v ~/grafana-web/nginx-images2/html:/var/www/html nginx-images2

stop:
	docker stop nginx-images2