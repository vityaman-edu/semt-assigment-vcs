#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 

  set_name $NAME
  set_email $EMAIL

  cp ~/$SRC/* .
  add_all

  comm "Start of project. Added initial files."
  
end