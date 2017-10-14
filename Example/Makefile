CURRENT_DIRECTORY := $(shell pwd)
NAME = example
TAG = latest
IMAGE = basic/$(NAME)
CONTAINER = alpine-nginx-php5-example
HOSTPORT = 8080

build:
	@docker build -t $(IMAGE):$(TAG) $(CURRENT_DIRECTORY)

console:
	sudo docker exec -i -t $(CONTAINER) /bin/sh

delete:
	@docker stop $(CONTAINER)
	@sudo docker rm $(CONTAINER)

run-debug:
	@docker run -p $(HOSTPORT):80 --name $(CONTAINER) $(IMAGE):$(TAG)

run:
	@docker run -d -p $(HOSTPORT):80 --name $(CONTAINER) $(IMAGE):$(TAG)

start: build run
start-debug: build run-debug
restart: delete build run
restart-debug: delete run-debug
