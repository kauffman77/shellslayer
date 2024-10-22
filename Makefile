USER = kauffman77
REPO = shell-slayer
TAG = v0.1

build :
	docker build -t $(USER)/$(REPO):$(TAG) .

run :
	docker run -it $(USER)/$(REPO):$(TAG)

run-bash :
	docker run -it $(USER)/$(REPO):$(TAG) /usr/bin/bash

push :
	docker push $(USER)/$(REPO):$(TAG)
