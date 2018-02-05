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
        make \
        manpages-dev \
        nasm \
        rcs \
        screen \
        strace ltrace \
        subversion \
        valgrind \
        unzip \
        zip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD ["bash"]

