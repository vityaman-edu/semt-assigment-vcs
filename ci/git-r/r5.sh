#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="second_branch"
COMMIT="commit5"
TARGET="$BRANCH:$COMMIT"
NAME=$VITYA
EMAIL="Vitya@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter
  
  git pull origin master

  git checkout second_branch

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: bb - print class name in F.java."
  
  git push origin second_branch
end