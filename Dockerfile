FROM debian:buster

# install dependencies
RUN apt-get update
RUN apt-get install -y curl gnupg libx11-xcb1

# install signal
RUN curl -s https://updates.signal.org/desktop/apt/keys.asc | apt-key add -
RUN echo 'deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main' >/etc/apt/sources.list.d/signal-xenial.list
RUN apt-get update
RUN apt-get install -y signal-desktop

# create the unprivileged user
RUN useradd -m signal
USER signal
WORKDIR /home/signal

# start signal
CMD signal-desktop --no-sandbox
