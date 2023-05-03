#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit3"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout master
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something "
  
end