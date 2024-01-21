# vasp_docker
Working docker / instructions for VASP

The purpose of this repository is to share basic instructions and notes on how to use VASP with docker. This repo is not official, and you need to have a valid license and access to the source code to use it. The scripts are based specifically and tested with VASP 5.4.4, but I suspect that it will also work with VASP 6.X. This is not an optimal installation; it may be possible to get better numerical performance by using a different compiler, using the GPU options, etc. 

In order to make use of this repo, you will need the following files:

sha1sum ad2703019cbd0a720f1af1d1d265aba36dfe9711	vasp.5.4.4.pl2.tgz
c015858df31ce8088d7d30b6ecc362fae86fd0bf		vdw_kernel.bindat.gz

You should put those files in the `vasp_source` directory

You also need a working installation of docker


Commands

`docker build -t vasp5:0.1 .`


`docker run -v .:/workspace vasp5:0.1`

`docker run -it --volume .:/workspace vasp5:0.1`


```
(base) itamblyn@telemachus arch % diff makefile.include.linux_gnu ../../../makefile.include 
19c19
< FFLAGS     = -w
---
> FFLAGS     = -w -fallow-argument-mismatch
24,28c24,31
< LIBDIR     = /opt/gfortran/libs/
< BLAS       = -L$(LIBDIR) -lrefblas
< LAPACK     = -L$(LIBDIR) -ltmglib -llapack
< BLACS      = 
< SCALAPACK  = -L$(LIBDIR) -lscalapack $(BLACS)
---
> #LIBDIR     = /opt/gfortran/libs/
> #BLAS       = -L$(LIBDIR) -lrefblas
> #LAPACK     = -L$(LIBDIR) -ltmglib -llapack
> #BLACS      = 
> #SCALAPACK  = -L$(LIBDIR) -lscalapack $(BLACS)
> BLAS        = -lopenblas
> LAPACK      = -lopenblas
> SCALAPACK   = -lscalapack-openmpi
32,34c35,39
< FFTW       ?= /opt/gfortran/fftw-3.3.4-GCC-5.4.1
< LLIBS      += -L$(FFTW)/lib -lfftw3
< INCS       = -I$(FFTW)/include
---
> #FFTW       ?= /opt/gfortran/fftw-3.3.4-GCC-5.4.1
> #LLIBS      += -L$(FFTW)/lib -lfftw3
> LLIBS      += -lfftw3 -lfftw3_omp
> #INCS       = -I$(FFTW)/include
> INCS       = -I/usr/include
```
