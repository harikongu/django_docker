A simple Docker image automated build using Dockerfile.

To build:
--------
docker build -t django_docker:latest .

To run:
-------
docker run -d -p 8000:8000 django_docker:latest

Tag docker image
----------------
$ docker tag 7d9495d03763 harikongu/django_docker:latest

Docker login to log into the Docker Hub
---------------------------------------
$ docker login --username=harikongu --email=hari@docker.com

Push image to Docker Hub repository
-----------------------------------
$ docker push harikongu/django_docker

Docker Pull Command
-------------------
$ docker pull harikongu/django_docker

