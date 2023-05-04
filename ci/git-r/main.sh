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
  call r3
  call r4
  call r5
  call r6
  call r7
  call r8
  call r9
  call r10
  call r11
  call r12
  call r13
  call r14

  cd ~/.gitrepo/$REPO_NAME
  mkdir logs
  cd logs
  git log > $VSC_NAME-log.txt
  git log --pretty=format:"%h %s" --graph > $VSC_NAME-graph.txt
end
