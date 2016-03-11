FROM debian:latest

ADD fish.key ./

RUN apt-key add - < fish.key && rm fish.key
RUN echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_8.0/ /' >> /etc/apt/sources.list.d/fish.list
RUN apt-get update
RUN apt-get install -y curl fish git ruby vim
RUN gem install rake
RUN curl -L https://bit.ly/janus-bootstrap | bash

CMD ["/usr/bin/fish"]

