#!/bin/bash

set -xe

export JAVA_HOME=/opt/java/openjdk-21
echo ${JAVA_HOME}

REPO_ENDPOINT=$1
REPO_BRANCH=$2

git clone -b $REPO_BRANCH $REPO_ENDPOINT
cd k-NN-1

# Build the plugin (assume that it is snapshot 2.14 build)
bash scripts/build.sh -v 2.14.0 -s true
cp /home/ci-runner/k-NN-1/build/distributions/opensearch-knn-2.14.0.0-SNAPSHOT.zip /artifacts

echo Success
