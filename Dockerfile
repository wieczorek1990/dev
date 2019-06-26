
FROM debian:latest

RUN apt-get update && \
apt-get install -y curl fish git less tree vim && \
rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/fish"]
