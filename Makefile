VERSION=v1
DOCKERUSER=dkimpara

build:
	docker build -f dockerfile-custom-image -t custom-image .
push:
	docker tag custom-image $(DOCKERUSER)/custom-image:$(VERSION)
	docker push $(DOCKERUSER)/custom-image:$(VERSION)
	docker tag custom-image $(DOCKERUSER)/custom-image:latest
	docker push $(DOCKERUSER)/custom-image:latest