#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 

  set_name $NAME
  set_email $EMAIL

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Start of project. Added initial files."
  
end