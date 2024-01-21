# vasp_docker
Working docker / instructions for VASP

The purpose of this repository is to share basic instructions and notes on how to use VASP with docker. This repo is not official, and you need to have a valid license and access to the source code to use it. The scripts are based specifically and tested with VASP 5.4.4, but I suspect that it will also work with VASP 6.X. This is not an optimal installation; it may be possible to get better numerical performance by using a different compiler, using the GPU options, etc. 

In order to make use of this repo, you will need the following files:

sha1sum ad2703019cbd0a720f1af1d1d265aba36dfe9711	vasp.5.4.4.pl2.tgz
c015858df31ce8088d7d30b6ecc362fae86fd0bf		vdw_kernel.bindat.gz

You should put those files in the `vasp_source` directory

You also need a working installation of docker



