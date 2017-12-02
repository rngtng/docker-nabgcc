
build:
	docker build -t nabaztag .

run:
	docker run -it -v `pwd`/nabgcc:/nabgcc nabaztag:latest