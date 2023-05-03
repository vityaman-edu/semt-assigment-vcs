#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="second_branch"
COMMIT="commit2"
TARGET="$BRANCH:$COMMIT"
NAME=$VITYA
EMAIL="Vitya@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git pull

  git checkout -b second_branch

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Created second branch, files are in the same state as in r0 commit."
  
  git push --set-upstream origin second_branch
  git push
end