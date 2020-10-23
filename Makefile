test: test-opam test-pypi test-cargo test-anaconda test-julia test-mongodb

BOOTSTRAP_WITH_SJTUG := FALSE

build-all:
ifeq ($(BOOTSTRAP_WITH_SJTUG), TRUE)
	docker-compose build --build-arg USE_SJTUG=TRUE
else
	docker-compose build
endif

test-docker:
	docker image rm docker.mirrors.sjtug.sjtu.edu.cn/library/fedora || true
	docker pull docker.mirrors.sjtug.sjtu.edu.cn/library/fedora

build-%:
ifeq ($(BOOTSTRAP_WITH_SJTUG), TRUE)
	docker-compose build --build-arg USE_SJTUG=TRUE $*
else
	docker-compose build $*
endif

test-%: build-%
	docker-compose run --rm $*
