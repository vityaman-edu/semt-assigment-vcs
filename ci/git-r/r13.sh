#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit13"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL

  git checkout master

  {
    git merge third_branch
  }||{
    cp $HISTORY_PATH/$COMMIT/* .
  }
  
  add_all

  git rm "*" -f

  comm "Merged master and third branch. Added new functions in B, E, F"
  
end