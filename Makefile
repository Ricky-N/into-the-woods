DOCKER_REGISTRY = registry.niemi.online
DOCKER_LABEL = into-the-woods

COMMIT_ID = $(shell git rev-parse HEAD)
TAG = $(COMMIT_ID)
DOCKER_LOCATOR = $(DOCKER_REGISTRY)/$(DOCKER_LABEL):$(TAG)
DOCKER_LOCATOR_LATEST = $(DOCKER_REGISTRY)/$(DOCKER_LABEL):latest

build:
	docker build -t $(DOCKER_LOCATOR) .
	docker tag $(DOCKER_LOCATOR) $(DOCKER_LOCATOR_LATEST)

run:
	docker run -it --rm $(DOCKER_LOCATOR)
