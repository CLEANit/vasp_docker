#!/bin/bash

# clean up old stuff from previous runs
rm -rf vasp.5.4.4.pl2 bin

tar xvfz vasp_source/vasp.5.4.4.pl2.tgz
cd vasp.5.4.4.pl2
cp ../makefile.include .
make
cd ..
cp -r vasp.5.4.4.pl2/bin .

