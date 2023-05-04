#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="third-branch"
COMMIT="commit8"
TARGET="$BRANCH:$COMMIT"
NAME=$VITYA
EMAIL="Vitya@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin 
  enter

  git pull origin third_branch
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something"

  git push origin third_branch
end