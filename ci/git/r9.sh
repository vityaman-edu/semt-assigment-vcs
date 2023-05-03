#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit9"
TARGET="$BRANCH:$COMMIT"
NAME="Artem"
EMAIL="Artem@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout master
  
  cp ~/$SRC/* .
  add_all

  git rm "*" -f

  comm "Added: nn fuction - returns Object in F class, * file - was removed, classes A, B, E got one new method each "
  
end