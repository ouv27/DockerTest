FROM debian:stretch
MAINTAINER Ouv27 <smo270970@hotmail.com> #Original creator of this Dockerfile
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD https://repo.mosquitto.org/debian/mosquitto-repo.gpg.key .
RUN apt-key add mosquitto-repo.gpg.key
ADD https://repo.mosquitto.org/debian/mosquitto-jessie.list /etc/apt/sources.list.d/

RUN apt-get install -y mosquitto
