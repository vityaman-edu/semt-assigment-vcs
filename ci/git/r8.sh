#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="third-branch"
COMMIT="commit8"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin 
  enter

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something"

end