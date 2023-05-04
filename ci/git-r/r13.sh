#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit13"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
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
    git checkout second_branch F.java
    git rm "*" -f
  }
  
  cp $HISTORY_PATH/$COMMIT/* .

  add_all

  comm "Merged master and third branch. Added new functions in B, E, F"

  git push origin
  
end