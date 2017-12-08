NAME   := thingful/ruby-node
TAG    := $(shell git describe --tags --always --dirty --abbrev=6)
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

.PHONY: build
build:
	echo ${IMG}
	#docker build -t ${IMG} .
	#docker tag ${IMG} ${LATEST}
