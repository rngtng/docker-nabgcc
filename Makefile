
build:
	docker build -t mtl_linux .

run:
	docker run -it -v `pwd`/nabgcc:/nabgcc mtl_linux:latest
