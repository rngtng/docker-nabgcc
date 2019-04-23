
build:
	docker build -t nabgcc .

run:
	docker run -it -v `pwd`/nabgcc:/nabgcc nabgcc:latest
