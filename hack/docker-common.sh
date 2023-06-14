#!/usr/bin/env bash

# shellcheck disable=SC2034
# disable unused variable warnings

set -e

# shellcheck source=/dev/null
source hack/common.sh

if [ -z "$IMAGE_BUILD_CMD" ]; then
    IMAGE_BUILD_CMD=$(command -v podman || echo "")
fi
if [ -z "$IMAGE_BUILD_CMD" ]; then
    IMAGE_BUILD_CMD=$(command -v docker || echo "")
fi

if [ -z "$IMAGE_BUILD_CMD" ]; then
    echo -e '\033[1;31m' "podman or docker not found on system" '\033[0m'
    exit 1
fi

IMAGE_RUN_CMD="${IMAGE_RUN_CMD:-${IMAGE_BUILD_CMD} run --rm -it}"

${IMAGE_BUILD_CMD} build -f must-gather/Dockerfile -t "${MUST_GATHER_FULL_IMAGE_NAME}" must-gather/