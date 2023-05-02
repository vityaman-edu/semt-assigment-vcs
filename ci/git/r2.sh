#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="second_branch"
COMMIT="commit2"
TARGET="$BRANCH:$COMMIT"
NAME="BlueUser"
EMAIL="BlueUser@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 
  
  set_name $NAME
  set_email $EMAIL
  
  git checkout -b second_branch
  
  cp ~/$SRC/* ~/.gitrepo/$REPO_NAME
  add_all

  comm "added files r2"
  
end