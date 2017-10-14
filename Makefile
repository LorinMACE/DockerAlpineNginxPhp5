CURRENT_DIRECTORY := $(shell pwd)
NAME = alpine-php5-nginx
TAG = latest
IMAGE = basics/$(NAME)

build:
	@docker build -t $(IMAGE):$(TAG) $(CURRENT_DIRECTORY)
