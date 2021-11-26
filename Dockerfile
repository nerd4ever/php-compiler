FROM debian:10
LABEL maintainer="Sileno Brito"

ENV TZ=UTC
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    wget \
    apt-transport-https \
    lsb-release \
    ca-certificates \
    sudo \
    unzip \
    build-essential \
    libssl-dev \
    curl \
    dos2unix \
    cmake \
    doxygen \
    doxygen-doc \
    doxygen-latex \
    gdb \
    valgrind \
    libcurl4-openssl-dev \
    libcurl4 \
    libcunit1-dev \
    libcunit1 \
    automake \
    autoconf \
    pkg-config \
    libtool \
    bison \
    flex \
    re2c \
    rsync

RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

RUN apt update

RUN apt-get install -y \
    php7.1-dev \
    php7.2-dev \
    php7.3-dev \
    php7.4-dev \
    php8.0-dev \
    php8.1-dev \
    php-xdebug 

# Only to test if local env is building
RUN apt-get install -y openssh-server
EXPOSE 22

RUN apt-get clean
RUN useradd -ms /bin/bash nerd4ever && echo "nerd4ever:#changeIt!" | chpasswd \
    && echo "nerd4ever ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER nerd4ever
WORKDIR /workspace

CMD ["tail", "-f", "/var/log/lastlog"]