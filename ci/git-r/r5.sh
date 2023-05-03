#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="second_branch"
COMMIT="commit5"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout second_branch
  
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: bb - print class name in F.java."
  
end