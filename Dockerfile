FROM debian:unstable-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt update && \
    apt install -y texlive-full && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

VOLUME [ "/mnt" ]
WORKDIR "/mnt"
