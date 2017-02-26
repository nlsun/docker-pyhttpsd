DOCKER_IMAGE = nlsun/pyhttpsd
DOCKER_VERSION = 1.0.0

all: build push

build:
	docker build -t ${DOCKER_IMAGE} .
	docker tag ${DOCKER_IMAGE}:latest ${DOCKER_IMAGE}:${DOCKER_VERSION}

push:
	docker push ${DOCKER_IMAGE}:latest
	docker push ${DOCKER_IMAGE}:${DOCKER_VERSION}
