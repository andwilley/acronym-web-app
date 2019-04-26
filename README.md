# acronym-web-app

## Container Setup

application.properties:

spring.data.mongodb.uri=mongodb://acronym-mongo-db:27017/start

apiCall.js:

const url = "http://localhost:8080/acronyms?bullets=";

from proj_root/MongoDocker/: docker build -t acronym-mongo-db .

from proj_root/: docker build -t acronym-web-app .

from proj_root/Acronym-front-end: docker build -t acronym-front-end .

docker network create acronym-net

docker run -d --rm --name acronym-mongo-db --net acronym-net acronym-mongo-db:latest

docker run -d --rm -p 8080:8080 --name acronym-web-app --net acronym-net acronym-web-app:latest

docker run -d --rm -p 8000:80 --name acronym-front-end acronym-front-end:latest
