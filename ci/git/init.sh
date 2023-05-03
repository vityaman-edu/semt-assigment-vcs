#!/bin/bash

. ci/git/lib/head.sh --source-only
TARGET="init"
. ci/git/lib/dsl.sh --source-only

begin
  log "repo is $REPO_NAME"
  
  mkdir -p ~/.gitrepo
  cd ~/.gitrepo
  git init $REPO_NAME
  cd $REPO_NAME
  
  log "repository created"

  end