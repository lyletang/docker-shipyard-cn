# Makefile for the Docker image tangjiahui1014/docker-shipyard-cn
# The original version of the address: janeczku/docker-shipyard-armv7
# This must be run on the ARMv7 platform
# Test on Raspberry Pi 3B

.PHONY: all container release

PREFIX = tangjiahui1014
TAG = dev-3ef21f

all: container

container:
	@echo Building Shipyard image $(TAG)
	docker build -t ccut .
	docker tag ccut:latest ccut:$(TAG)

release: container
	@echo Pushing Shipyard image $(TAG)
	docker push $(PREFIX)/shipyard-armv7
