#!/bin/bash

. ci/svn/lib/head.sh --source-only
TARGET="main"
. ci/svn/lib/dsl.sh --source-only

begin
  log "pwd: $(pwd)"

  call clean
  call r_init
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

  svn checkout file://$HOME/.svnrepos/$REPO_NAME out
  cd out
  svn log > $VSC_NAME-log.txt
  cd ..
end