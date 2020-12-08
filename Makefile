test: test-opam test-pypi test-cargo test-anaconda test-julia test-mongodb

USE_SJTUG := TRUE

build-all:
ifeq ($(USE_SJTUG), TRUE)
	docker-compose build --build-arg USE_SJTUG=TRUE
else
	docker-compose build
endif

test-docker:
	docker image rm docker.mirrors.sjtug.sjtu.edu.cn/library/fedora || true
	docker pull docker.mirrors.sjtug.sjtu.edu.cn/library/fedora:latest

test-gcr-io:
	./docker-clean-repo.sh k8s-gcr-io.mirrors.sjtug.sjtu.edu.cn/echoserver || true
	docker pull k8s-gcr-io.mirrors.sjtug.sjtu.edu.cn/echoserver:1.4

build-%:
ifeq ($(USE_SJTUG), TRUE)
	docker-compose build --build-arg USE_SJTUG=TRUE $*
else
	docker-compose build $*
endif

test-%: build-%
	docker-compose run --rm $*
