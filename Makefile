NAME   := thingful/ruby-node
TAG    := $(shell git describe --tags --always --dirty --abbrev=6)
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

.PHONY: build
build:
	docker build -t ${NAME} .

.PHONY: push
push: build
	docker tag ${NAME} ${IMG}
	docker tag ${IMG} ${LATEST}
	docker push ${IMG}
	docker push ${LATEST}
