#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit1"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 

  # Fetch changes from remote repo and merge 
  # it with current local state
  git pull origin
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: bb - print class name in F.java."
  
  git push origin
end