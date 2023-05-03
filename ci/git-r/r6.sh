#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit6"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout master
  
  git merge second_branch -m "Second branch does not contain any new features"
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm 3yNy8wQeGi.Xzj -f

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something, interfaces A,B,E turned into classes"
  
end