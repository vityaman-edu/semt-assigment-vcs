#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit13"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 

  git pull origin
  
  git checkout third_branch

  git checkout master

  {
    git merge third_branch
  }||{
    cp $HISTORY_PATH/$COMMIT/* .
  }
  
  add_all

  git rm "*" -f

  comm "Merged master and third branch. Added new functions in B, E, F"

  git push origin
  
end