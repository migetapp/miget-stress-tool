FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    htop \
    screen \
    stress-ng \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
USER 1000
WORKDIR /home/ubuntu
CMD stress-ng -c 1 -t 15m && sleep infinity
