#!/usr/bin/env bash

set -e

source hack/docker-common.sh

IMAGE_REGISTRY ?= "quay.io"
REGISTRY_NAMESPACE ?= "rhceph-dev"
IMAGE_TAG ?= "latest-4.14"
MUST_GATHER_IMAGE_NAME ?= "odf4-odf-must-gather-rhel9"

MUST_GATHER_FULL_IMAGE_NAME ?= $(IMAGE_REGISTRY)/$(REGISTRY_NAMESPACE)/$(MUST_GATHER_IMAGE_NAME):$(IMAGE_TAG)

ODF_MUST_GATHER_DIR ?= "${ODF_MUST_GATHER_DIR:-odf-must-gather}"
OCP_MUST_GATHER_DIR ?= "${OCP_MUST_GATHER_DIR:-ocp-must-gather}"

.PHONY: \
	odf-must-gather 
	
odf-must-gather:
	@echo "Building the odf-must-gather image"
	${IMAGE_BUILD_CMD} build -f must-gather/Dockerfile -t "${MUST_GATHER_FULL_IMAGE_NAME}" must-gather/