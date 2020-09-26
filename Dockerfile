FROM ubuntu:latest
WORKDIR /tmp/webserver
COPY index.html webserver.sh /tmp/webserver/
RUN apt-get update && apt-get -y install netcat && apt-get clean
RUN chmod +x /tmp/webserver/webserver.sh
EXPOSE 8080
RUN /tmp/webserver/webserver.sh