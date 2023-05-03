#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit10"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 

  cp ~/$SRC/* .
  add_all

  comm "Added: A, B, E, F classes got one new method each, * and 67VNIR0FbP.TcV files were created."
  
end