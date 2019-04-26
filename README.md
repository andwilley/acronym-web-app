# acronym-web-app

## Container Setup

application.properties:
spring.data.mongodb.uri=mongodb://acronym-mongo-db:27017/start

from proj_root/MongoDocker/: docker build -t acronym-mongo-db .
from proj_root/: docker build -t acronym-web-app .

docker network create acronym-net
docker run -d --rm --name acronym-mongo-db --net acronym-net acronym-mongo-db:latest
docker run -d --rm -p 8080:8080 --name acronym-web-app --net acronym-net acronym-web-app:latest
