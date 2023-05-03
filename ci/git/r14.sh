#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit14"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: A, B, E, F classes got one new method each, rvvddKJVqH.1ip  file - added."
  
end