FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y \
    git zlib1g-dev openjdk-8-jdk-headless autoconf curl libtool \
    libpq-dev libssl-dev git zip unzip openjdk-8-jdk python3-pip autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libffi-dev libssl-dev ccache unzip zip python3 rar unrar \
    python3-virtualenv python3-pip pkg-config cmake libffi-dev \
 && pip3 install cython buildozer

    


VOLUME /buildozer/
VOLUME /p4a/
volume /opt/

WORKDIR /buildozer/  

COPY app/spec ./spec
COPY app/src ./src
COPY app/alhamdulah ./hamdulah

