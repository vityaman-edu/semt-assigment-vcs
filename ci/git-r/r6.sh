#!/bin/bash

. ci/git-r/lib/head.sh --source-only
BRANCH="master"
COMMIT="commit6"
TARGET="$BRANCH:$COMMIT"
NAME=$ARTEM
EMAIL="Artem@itmo.ru"
. ci/git-r/lib/dsl.sh --source-only

begin
  enter

  git pull origin

  git checkout second_branch

  git checkout third_branch

  git checkout master
  
  git merge second_branch -m "Second branch does not contain any new features"
  cp $HISTORY_PATH/$COMMIT/* .
  add_all

  git rm 3yNy8wQeGi.Xzj -f

  comm "Added: pp fuction - returns Object in F class, * file - contains chinese, 3yNy8wQeGi.Xzj file - contains binary something, interfaces A,B,E turned into classes"
  
  git push origin
end