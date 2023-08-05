FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y sudo

ENV SHELL bash
ENV LC_CTYPE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ARG USERNAME=node
RUN useradd -m $USERNAME && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR /home/node/works
COPY . /home/node/works