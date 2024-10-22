USER = kauffman77
REPO = shellslayer
TAG = latest
# TAG = v0.1

build :
	docker build -t $(USER)/$(REPO):$(TAG) .

run :
	docker run -it $(USER)/$(REPO):$(TAG)

run-bash :
	docker run -it $(USER)/$(REPO):$(TAG) /usr/bin/bash

push :
	docker push $(USER)/$(REPO):$(TAG)
