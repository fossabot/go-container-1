.PHONY: help
## print all available commands
help:
	@./make/help.sh

.PHONY: download-alpine
## export alpine linux status for running sample container
download-alpine:
	docker pull alpine:latest
	docker run --name alpine-tmp alpine:latest
	docker export alpine-tmp > alpine.tar
	docker rm alpine-tmp
	tar -xvf alpine.tar -C newroot/
	rm alpine.tar