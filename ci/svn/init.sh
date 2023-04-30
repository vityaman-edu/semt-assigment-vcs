#!/bin/bash

set -e

cd $(dirname -- "$0"; )
cd ../..

echo "[svn:init] started 'creating an empty repository'"

export REPO_NAME="semt-assigment-vcs-svn-repository"
echo "[snv:init] repo is $REPO_NAME"

mkdir -p ~/.svnrepos/
svnadmin create ~/.svnrepos/$REPO_NAME

echo "[svn:init] repository created"

svn mkdir -m "Create repository structure." \
  file://$HOME/.svnrepos/$REPO_NAME/trunk \
  file://$HOME/.svnrepos/$REPO_NAME/branches \
  file://$HOME/.svnrepos/$REPO_NAME/tags

echo "[svn:init] repository initialized"

mkdir -p playground/$REPO_NAME
cd playground/$REPO_NAME
svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk ./
svn add --force ./
svn commit -m "Initial import."
svn update

echo "[svn:init] initial import done"

echo "[svn:init] finished 'creating an empty repository'"
