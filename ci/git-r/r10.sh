#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit10"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter 

  git pull origin

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  comm "Added: A, B, E, F classes got one new method each, * and 67VNIR0FbP.TcV files were created."
  
  git push origin
end