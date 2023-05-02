#!/bin/bash

. ci/git/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
NAME="RedUser"
EMAIL="RedUser@itmo.ru"
. ci/git/lib/dsl.sh --source-only

begin
  enter 

  set_name $NAME
  set_email $EMAIL

  cp ~/$SRC/"A.java" ~/.gitrepo/$REPO_NAME
  add_all

  comm "added files"
  
end