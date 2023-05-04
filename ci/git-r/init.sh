#!/bin/bash

. ci/git-r/lib/head.sh --source-only
TARGET="init"
. ci/git-r/lib/dsl.sh --source-only

begin
  log "repo is $REPO_NAME"
  
  mkdir -p ~/.gitrepo
  cd ~/.gitrepo
  git init $REPO_NAME --bare
  
  git config --global pull.rebase false
  log "repository created"

end