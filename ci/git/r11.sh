#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit11"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter

  cp ~/$SRC/* .
  add_all

  git rm 67VNlR0FbP.TcV -f

  comm "Added: A, B, E, F classes got one new method each, 67VNlR0FbP.TcV file - removed."
  
end