FROM debian:stretch
MAINTAINER Ouv27 <smo270970@hotmail.com> #Original creator of this Dockerfile
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

