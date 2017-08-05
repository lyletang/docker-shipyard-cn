# Makefile for the Docker image janeczku/shipyard-armv7
# MAINTAINER: Jan Broer <janeczku@yahoo.com>
# This must be run on the ARMv7 platform

.PHONY: all container release

PREFIX = janeczku
TAG = dev-3ef21f

all: container

container:
	@echo Building Shipyard image $(TAG)
	# docker build -t $(PREFIX)/shipyard-armv7 .
	docker build -t ccut .
	# docker tag $(PREFIX)/shipyard-armv7:latest $(PREFIX)/shipyard-armv7:$(TAG)
	docker tag ccut:latest ccut:$(TAG)

release: container
	@echo Pushing Shipyard image $(TAG)
	docker push $(PREFIX)/shipyard-armv7
