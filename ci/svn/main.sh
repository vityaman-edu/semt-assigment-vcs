#!/bin/bash
set -e
cd $(dirname -- "$0"; )
cd ../..
export VSC_NAME="svn"
export TARGET="main"
export TAG="[$VSC_NAME:$TARGET]"
export REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"

echo "$TAG started 'demonstration'"
echo "$TAG pwd: $(pwd)"

bash ci/svn/clean.sh
bash ci/svn/init.sh

echo "$TAG finished 'demonstration'"
