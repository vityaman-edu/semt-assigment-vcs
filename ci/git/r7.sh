#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="third-branch"
COMMIT="commit7"
TARGET="$BRANCH:$COMMIT"
NAME="Vitya"
EMAIL="Vitya@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin 
  enter

  set_name $NAME
  set_email $EMAIL

  git checkout third_branch

  cp ~/$SRC/* .
  add_all

  comm "Added: bb function - returns Object in F.java"

end

