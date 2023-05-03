#!/bin/bash

. ci/git-r/lib/head.sh --source-only
TARGET="main"
. ci/git-r/lib/dsl.sh --source-only

begin
  call clean
  call init
  call init_users
  call r0
  call r1
  call r2

  cd ~/.gitrepo/$REPO_NAME
  mkdir logs
  cd logs
  git log > $VSC_NAME-log.txt
end
