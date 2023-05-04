#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="third_branch"
COMMIT="commit4"
TARGET="$BRANCH:$COMMIT"
NAME=$VITYA
EMAIL="Vitya@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 
  
  git checkout master

  git pull origin

  git checkout -b third_branch

  cp $HISTORY_PATH/$COMMIT/* .
  
  git rm "*" -f
  git rm 3yNy8wQeGi.Xzj -f
  
  add_all
  
  comm "Created third branch, files are in the same state as in r0 commit., files * and 3yNy8wQeGi.Xzj were removed"
  
  git push origin third_branch
end