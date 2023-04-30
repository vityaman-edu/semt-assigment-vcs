#!/bin/bash
set -e
cd $(dirname -- "$0"; )
cd ../..
export VSC_NAME="svn"
export TARGET="init"
export TAG="[$VSC_NAME:$TARGET]"
export REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"

echo "$TAG started 'creating an empty repository'"

echo "$TAG repo is $REPO_NAME"

mkdir -p ~/.svnrepos/
svnadmin create ~/.svnrepos/$REPO_NAME

echo "$TAG repository created"

svn mkdir -m "Create repository structure." \
  file://$HOME/.svnrepos/$REPO_NAME/trunk \
  file://$HOME/.svnrepos/$REPO_NAME/branches \
  file://$HOME/.svnrepos/$REPO_NAME/tags

echo "$TAG repository initialized"

mkdir -p playground/$REPO_NAME
cd playground/$REPO_NAME
svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk ./
svn add --force ./
svn commit -m "Initial import."
svn update

echo "$TAG initial import done"

echo "$TAG finished 'creating an empty repository'"
