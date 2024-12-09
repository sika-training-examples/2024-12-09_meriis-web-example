build:
ifndef VERSION
	$(error VERSION is not set)
endif
	docker build . --platform linux/amd64 -t registry.sikalabs.com/examples/meriis/meriis-web-example:${VERSION}
	docker push registry.sikalabs.com/examples/meriis/meriis-web-example:${VERSION}
