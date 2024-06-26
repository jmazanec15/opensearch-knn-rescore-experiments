#!/bin/bash

set -xe

export JAVA_HOME=/opt/java/openjdk-21
echo ${JAVA_HOME}
REPO_ENDPOINT=$1
REPO_BRANCH=$2
git clone -b $REPO_BRANCH $REPO_ENDPOINT
cd k-NN-1
bash scripts/build.sh -v 2.14.0 -s true
