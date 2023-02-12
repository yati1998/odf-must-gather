IMAGE_REGISTRY ?= "quay.io"
REGISTRY_NAMESPACE ?= "ocs-dev"
IMAGE_TAG ?= "latest"
MUST_GATHER_IMAGE_NAME ?= "ocs-must-gather"

MUST_GATHER_IMAGE_NAME ?= $(IMAGE_REGISTRY)/$(REGISTRY_NAMESPACE)/$(MUST_GATHER_IMAGE_NAME):$(IMAGE_TAG)

OCS_MUST_GATHER_DIR ?= "${OCS_MUST_GATHER_DIR:-ocs-must-gather}"
OCP_MUST_GATHER_DIR ?= "${OCP_MUST_GATHER_DIR:-ocp-must-gather}"

PLATFORM ?= "docker"

.PHONY: \
	odf-must-gather 
	
odf-must-gather:
	@echo "Building the ocs-must-gather image"
	${PLATFORM} build -f must-gather/Dockerfile -t ${MUST_GATHER_IMAGE_NAME} must-gather/
