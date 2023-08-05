FROM ruby:3.1

ARG RUBYGEMS_VERSION=3.3.20

RUN apt update \
    && apt install -y sudo

ENV SHELL bash

ARG USERNAME=node
RUN useradd -m $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR /home/node/works


ADD works /home/node/works

RUN sudo chown $USERNAME Gemfile

RUN sudo gem update --system ${RUBYGEMS_VERSION} && \
    sudo bundle install
