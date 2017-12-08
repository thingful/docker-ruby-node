NAME   := thingful/ruby-node
TAG    := $(shell git describe --tags --always --dirty --abbrev=6)
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

.PHONY: build
build:
	docker build -t ${IMG} .
	docker tag ${IMG} ${LATEST}

.PHONY: push
push: build
	docker push ${IMG}
	docker push ${LATEST}
