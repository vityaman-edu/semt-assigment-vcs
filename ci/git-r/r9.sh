#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit9"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 
  
  git pull origin

  git checkout master
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm "*" -f

  comm "Added: nn fuction - returns Object in F class, * file - was removed, classes A, B, E got one new method each "
  
  git push origin
end