#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="third-branch"
COMMIT="commit7"
TARGET="$BRANCH:$COMMIT"
NAME=$VITYA
EMAIL="Vitya@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin 
  enter

  git pull origin master
  
  git checkout third_branch

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: bb function - returns Object in F.java"
  
  git push origin third_branch
end

