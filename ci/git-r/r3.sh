#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit3"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 
  
  git pull origin
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something "

  git push origin
end