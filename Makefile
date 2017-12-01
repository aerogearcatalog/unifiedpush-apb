DOCKERHOST = docker.io
DOCKERORG = feedhenry
IMAGENAME = unifiedpush-apb
TAG = latest
USER=$(shell id -u)
PWD=$(shell pwd)
LAST_COMMIT=$(shell git rev-parse HEAD)
ORIGIN = origin

build_and_push: apb_build docker_push apb_push

.PHONY: apb_build
apb_build:
	docker run --rm --privileged -v $(PWD):/mnt:z -v $(HOME)/.kube:/.kube -v /var/run/docker.sock:/var/run/docker.sock -u $(USER) docker.io/ansibleplaybookbundle/apb:latest prepare
	docker build -t $(DOCKERHOST)/$(DOCKERORG)/$(IMAGENAME):$(TAG) .

.PHONY: docker_push
docker_push:
	docker push $(DOCKERHOST)/$(DOCKERORG)/$(IMAGENAME):$(TAG)

.PHONY: apb_push
apb_push:
	 docker run --rm --privileged -v $(PWD):/mnt:z -v $(HOME)/.kube:/.kube -v /var/run/docker.sock:/var/run/docker.sock -u $(USER) docker.io/ansibleplaybookbundle/apb:latest push

.PHONY: apb_release
apb_release:
    ifdef VERSION
				@echo "Preparing $(VERSION)"
    else
				$(error No VERSION defined!)
    endif
    ifeq ($(shell git ls-files -m | wc -l),0)
				@echo 'tagging for $(LAST_COMMIT)'
				git tag -a $(VERSION) $(LAST_COMMIT) -m "signing tag" && git push $(ORIGIN) $(VERSION)
    else
				$(error Aborting release process, since local files are modified)
    endif
