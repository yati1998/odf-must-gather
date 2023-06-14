#!/usr/bin/env bash

.PHONY: \
	odf-must-gather 
	
odf-must-gather:
	@echo "Building the odf-must-gather image"
	hack/docker-common.sh