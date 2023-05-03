#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit1"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: bb - print class name in F.java."
  
end