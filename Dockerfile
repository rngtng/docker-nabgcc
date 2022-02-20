FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install g++ make
RUN apt-get -y install g++-multilib

# ADD https://github.com/rngtng/mtl_linux/archive/v.0.0.1.tar.gz mtl_linux.tar.gz
COPY ./v.0.0.1.tar.gz mtl_linux.tar.gz
RUN tar -xvzf /mtl_linux.tar.gz

RUN cd /mtl_linux-v.0.0.1 && make

COPY Makefile.nabgcc Makefile

CMD ["bash"]
