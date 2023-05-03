#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="third_branch"
COMMIT="commit4"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout -b third_branch
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm "*" -f
  git rm 3yNy8wQeGi.Xzj -f

  comm "Created third branch, files are in the same state as in r0 commit., files * and 3yNy8wQeGi.Xzj were removed"
  
end