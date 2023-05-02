#!/bin/bash
. ci/svn/lib/head.sh --source-only
TARGET="init"
. ci/svn/lib/import.sh --source-only

log "started 'creating an empty repository'"

log "repo is $REPO_NAME"

mkdir -p ~/.svnrepos/
svnadmin create ~/.svnrepos/$REPO_NAME

log "repository created"

svn mkdir -m "Create repository structure." \
  file://$HOME/.svnrepos/$REPO_NAME/trunk \
  file://$HOME/.svnrepos/$REPO_NAME/branches \
  file://$HOME/.svnrepos/$REPO_NAME/tags

log "repository initialized"

mkdir -p playground/$REPO_NAME
cd playground/$REPO_NAME
svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk ./
svn add --force ./
svn commit -m "Initial import."
svn update

log "initial import done"

log "finished 'creating an empty repository'"
