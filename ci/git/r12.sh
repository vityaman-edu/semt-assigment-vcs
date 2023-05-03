#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="third-branch"
COMMIT="commit12"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin 
  enter

  set_name $NAME
  set_email $EMAIL

  git checkout third_branch

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm "*" -f
  git rm 3yNy8wQeGi.Xzj -f

  comm "Added: mm function - returns Object in F.java, * and 3yNy8wQeGi.Xzj files were removed."

end

