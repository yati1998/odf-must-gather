#!/usr/bin/env bash

# shellcheck disable=SC2034
# disable unused variable warnings

IMAGE_REGISTRY="quay.io"
REGISTRY_NAMESPACE="rhceph-dev"
IMAGE_TAG="latest-4.14"
MUST_GATHER_IMAGE_NAME="odf4-odf-must-gather-rhel9"

MUST_GATHER_FULL_IMAGE_NAME="${IMAGE_REGISTRY}/${REGISTRY_NAMESPACE}/${MUST_GATHER_IMAGE_NAME}:${IMAGE_TAG}"

ODF_MUST_GATHER_DIR="${ODF_MUST_GATHER_DIR:-odf-must-gather}"
OCP_MUST_GATHER_DIR="${OCP_MUST_GATHER_DIR:-ocp-must-gather}"
