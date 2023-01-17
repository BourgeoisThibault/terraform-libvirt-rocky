#!/bin/bash

REPO="tibhome"
IMAGE="terraform-libvirt-rocky"
VERSION="9.1-1"

docker build --no-cache -t ${REPO}/${IMAGE}:${VERSION} .

docker push ${REPO}/${IMAGE}:${VERSION}