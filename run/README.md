Copy the bin directory from the compile directory here

To build it:

`docker build -t vp5_run:0.1 .`

To run interactively

`docker run -it --mount type=bind,src="$(pwd)",target=/workspace vp5_run:0.1`

Within the container, just run


`mpirun --allow-run-as-root -np 2 ../bin/vp_gam` 
