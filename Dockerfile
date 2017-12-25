FROM debian:stretch
MAINTAINER Ouv27 <smo270970@hotmail.com> #Original creator of this Dockerfile
# To set right TimeZone
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install mosquitto

# Expose MQTT port
EXPOSE 1883

ENV PATH /usr/sbin:$PATH

ENTRYPOINT ["/usr/sbin/mosquitto"]