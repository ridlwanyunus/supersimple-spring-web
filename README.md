# Simple Spring Web 

## Image
1. 	Create image `supersimple-spring-web` with version `1.0`
	```bash
	docker build -t supersimple-spring-web:1.0 .
	```
	
## Container
1. 	Run the image `supersimple-spring-web` using
	```bash
	docker run -d -p 9091:9090 --name supersimple-spring-web-container supersimple-spring-web:1.0
	```

## Access Browser
1. 	Access the container using `localhost:9091`
	```bash
	http://localhost:9091/home
	```