test: test-opam test-pypi test-cargo test-anaconda test-julia test-mongodb

build-all:
	docker-compose build --build-arg USE_SJTUG=true

test-docker:
	docker image rm docker.mirrors.sjtug.sjtu.edu.cn/library/fedora || true
	docker pull docker.mirrors.sjtug.sjtu.edu.cn/library/fedora:latest

test-gcr-io:
	docker image rm k8s-gcr-io.mirrors.sjtug.sjtu.edu.cn/echoserver:1.4 || true
	docker pull k8s-gcr-io.mirrors.sjtug.sjtu.edu.cn/echoserver:1.4

build-%:
	docker-compose build --build-arg USE_SJTUG=true $*

test-%: build-%
	docker-compose run --rm $*
