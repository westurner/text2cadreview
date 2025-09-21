PYTHON=python3
DOCKER?=podman
DOCKER_RUN_ARGS=-v $(PWD):/workspace --security-opt=label=disable
ifeq ($(DOCKER),podman)
	DOCKER_RUN_ARGS+= --userns=keep-id
endif

.PHONY: help install test docs clean docker-build docker-run docker-test

help:
	@echo "Available make targets:"
	@echo "  install       Install the package in editable mode"
	@echo "  install-docs  Install documentation requirements"
	@echo "  test          Run tests with pytest"
	@echo "  docs          Build Sphinx documentation"
	@echo "  clean         Remove build artifacts and clean docs"
	@echo "  docker-build  Build the Docker image with podman or docker (DOCKER=podman|docker)"
	@echo "  docker-run    Run the image with podman or docker (DOCKER=podman|docker, rootless if podman, SELinux compatible)"
	@echo "  docker-test   Run pytest inside the container (DOCKER=podman|docker)"

install:
	$(PYTHON) -m pip install -e .

install-docs:
	$(PYTHON) -m pip install -r docs/requirements.txt

test:
	$(PYTHON) -m pytest

docs:
	cd docs && make html

clean:
	rm -rf build/ dist/ *.egg-info
	cd docs && make clean

docker-build:
	$(DOCKER) build -t text2cadreview:latest -f Dockerfile .

docker-run:
	$(DOCKER) run --rm -it $(DOCKER_RUN_ARGS) text2cadreview:latest

docker-test:
	$(DOCKER) run --rm -it $(DOCKER_RUN_ARGS) text2cadreview:latest pytest
