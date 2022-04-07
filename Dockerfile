FROM linuxserver/code-server
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
RUN apt-get --yes install python3.8 docker openjdk-17-jdk
EXPOSE 8080
