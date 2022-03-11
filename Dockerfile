FROM linuxserver/code-server
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get --yes install python3.8
RUN apt-get --yes install openjdk-17-jdk
