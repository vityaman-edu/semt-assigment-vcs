#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="second_branch"
COMMIT="commit2"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout -b second_branch

  cp ~/$SRC/* .
  add_all

  comm "Created second branch, files are in the same state as in r0 commit."
  
end