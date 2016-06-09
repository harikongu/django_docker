FROM ubuntu:14.04

MAINTAINER Hariprasad

# Install packages
RUN apt-get update && apt-get install -y \
    python-pip

RUN pip install Django==1.9.7

WORKDIR /home

RUN mkdir django_docker

# Copy contents of source directory
ADD hello_world /home/django_docker/hello_world/

EXPOSE 8000

# working directory
WORKDIR /home/django_docker/hello_world/

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]

