#!/bin/bash
set -e
cd $(dirname -- "$0"; )
cd ../..
export VSC_NAME="svn"
export TARGET="clean"
export TAG="[$VSC_NAME:$TARGET]"
export REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"

echo "$TAG started task '$TARGET'"

rm -rf playground/$REPO_NAME
echo "$TAG removed playground/$REPO_NAME"

rm -rf ~/.svnrepos/$REPO_NAME
echo "$TAG removed ~/.svnrepos/$REPO_NAME"

echo "$TAG finished task '$TARGET'"
