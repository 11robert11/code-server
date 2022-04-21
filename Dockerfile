FROM linuxserver/code-server
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
RUN apt-get --yes install python3.8 docker openjdk-17-jdk
EXPOSE 8080

COPY ./scripts/container/autoshutdown.sh /autoshutdown.sh
COPY ./scripts/container/start /start
RUN chmod +x start
RUN chmod +x autoshutdown.sh

ENTRYPOINT ["/start"]
