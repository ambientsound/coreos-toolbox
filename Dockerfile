FROM ubuntu:16.04
RUN locale-gen en_US.UTF-8 nb_NO.UTF-8
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install \
        ack-grep \
        bash-completion \
        bzip2 \
        git \
        htop \
        iperf \
        iptables \
        iputils-ping \
        mc \
        multitail \
        netcat \
        nmap \
        ntp \
        rsync \
        sudo \
        tcpdump \
        tcpflow \
        tmux \
        traceroute \
        tree \
        unzip \
        vim \
        zip \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /root
RUN git clone https://github.com/ambientsound/kbash.git .kbash
RUN yes '' | .kbash/bin/setup-kbash
ENV SHELL /bin/bash
ENTRYPOINT /bin/bash
