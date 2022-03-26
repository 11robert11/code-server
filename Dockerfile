FROM linuxserver/code-server
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get upgrade
RUN apt-get --yes install python3.8 docker openjdk-17-jdk
