#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit11"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter

  git pull origin

  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm 67VNlR0FbP.TcV -f

  comm "Added: A, B, E, F classes got one new method each, 67VNlR0FbP.TcV file - removed."
  
  git push origin
end