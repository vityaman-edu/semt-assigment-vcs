#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit14"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter

  git pull origin

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: A, B, E, F classes got one new method each, rvvddKJVqH.1ip  file - added."
  
  git push origin
end