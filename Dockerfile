FROM debian:stretch

LABEL maintainer="Andre Ippisch <ippisch@cs.uni-duesseldorf.de>"
LABEL authors="Andre Ippisch <ippisch@cs.uni-duesseldorf.de>"

RUN apt-get -qq update \
 && apt-get -yqq install \
        autoconf \
        automake \
        bison \
        build-essential \
        check \
        cmake \
        cvs \
        electric-fence \
        flex \
        g++ \
        gcc \
        gcc-multilib \
        gdb \
        git \
        indent \
        libaio1 \
        libc6-dev \
        ltrace \
        make \
        manpages-dev \
        nano \
        nasm \
        pkg-config \
        rcs \
        screen \
        strace \
        valgrind \
        unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY alias.sh /alias.sh
RUN bash -x /alias.sh \
 && rm /alias.sh

WORKDIR /data

CMD ["bash"]
