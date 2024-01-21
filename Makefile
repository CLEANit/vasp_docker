# to get into the docker container for developing
dev:
	docker run -it --volume .:/workspace vasp5:0.1 

# this command will build it
build:
	docker build -t vasp5:0.1 . 
	

# this is how you would deploy it 
run:
	docker run -v .:/workspace vasp5:0.1
