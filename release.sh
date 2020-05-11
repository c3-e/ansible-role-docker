#!/usr/bin/env bash

VERSION=1.0.1
PACKAGE_NAME=c3-docker

package() {
  tar -cvzf ${PACKAGE_NAME}-${VERSION}.tar.gz defaults files meta tasks LICENSE handlers
  aws s3 cp ${PACKAGE_NAME}-${VERSION}.tar.gz s3://c3--packagemanager/ops/bootstrap/public/${PACKAGE_NAME}-${VERSION}.tar.gz --profile=c3.ci.aws
}

package