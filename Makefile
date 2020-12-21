.PHONY: build

build:
	docker build -t marek/base:latest -f base.dockerfile .
	docker build -t marek/alpine:latest -f alpine.dockerfile .
	docker build -t marek/deb10:latest -f distroless-deb10.dockerfile .
	docker build -t marek/scratch:latest -f scratch.dockerfile .

