# Specify the parent image from which we build
# This is the most recent LTS version at the time of writing
FROM ubuntu:22.04

ADD . /workspace

WORKDIR /workspace

RUN apt update && apt install rsync make build-essential g++ gfortran libopenblas-dev libopenmpi-dev libscalapack-openmpi-dev libfftw3-dev libhdf5-openmpi-dev vim -y

WORKDIR /workspace/build
RUN tar xvfz ../vasp_source/vasp.5.4.4.pl2.tgz

WORKDIR /workspace/build/vasp.5.4.4.pl2
RUN cp /workspace/makefile.include .
RUN make
