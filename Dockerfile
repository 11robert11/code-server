FROM linuxserver/code-server
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing
RUN apt-get -qy full-upgrade
RUN apt-get install -qy curl
RUN curl -sSL https://get.docker.com/ | sH
RUN apt-get --yes install python3.8 openjdk-17-jdk-headless npm
EXPOSE 8080

COPY ./scripts/container/autoshutdown.sh /autoshutdown.sh
COPY ./scripts/container/start /start
RUN chmod +x start
RUN chmod +x autoshutdown.sh

ENTRYPOINT ["/start"]
