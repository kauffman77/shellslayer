USER = kauffman77
REPO = shellslayer
TAG = latest
# TAG = F2024
# TAG = v0.1

help :
	@echo 'Typical usage is:'
	@echo '   >> make build  # use `docker build` to update the local container'
	@echo '   >> make run    # run the local version of the container'
	@echo '   >> make push   # push the current local copy to DockerHub'
	@echo
	@echo 'Pushes will go to:'
	@echo "   $(USER)/$(REPO):$(TAG)"
	@echo "Make sure that's your username / repo on DockerHub if you plan to push"

build :
	docker build -t $(USER)/$(REPO):$(TAG) .

run :
	docker run -it --rm $(USER)/$(REPO):$(TAG)

run-bash :
	docker run -it --rm $(USER)/$(REPO):$(TAG) /usr/bin/bash

push :
	docker push $(USER)/$(REPO):$(TAG)
