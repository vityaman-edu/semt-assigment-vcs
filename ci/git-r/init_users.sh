#!/bin/bash

. ci/git-r/lib/head.sh --source-only
TARGET="init_users"
. ci/git-r/lib/dsl.sh --source-only

begin
  log "repo is $USERS_REPO"
  
  mkdir -p $USERS_REPO

  git clone $URL $USERS_REPO/$ARTEM
  git clone $URL $USERS_REPO/$VITYA

  log "repository for users created"
end