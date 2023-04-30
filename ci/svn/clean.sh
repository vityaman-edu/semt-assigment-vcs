#!/bin/bash

set -e

cd $(dirname -- "$0"; )
cd ../..

export REPO_NAME="semt-assigment-vcs-svn-repository"

echo "[svn:clean] started task 'clean'"

rm -rf playground/$REPO_NAME
echo "[svn:clean] removed playground/$REPO_NAME"

rm -rf ~/.svnrepos/$REPO_NAME
echo "[svn:clean] removed ~/.svnrepos/$REPO_NAME"

echo "[svn:clean] finished task 'clean'"
