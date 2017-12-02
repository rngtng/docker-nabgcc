FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install g++ gcc-arm-none-eabi gdb-arm-none-eabi php-cli make
RUN apt-get -y install g++-multilib

COPY Makefile.nabgcc Makefile

CMD ["bash"]