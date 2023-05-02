#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit11"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  delete "67VNlR0FbP.TcV"
  edit   "*"
  edit   A.java
  edit   B.java
  edit   E.java
  edit   F.java

  svn remove "67VNlR0FbP.TcV"

  svn commit \
    -m "$TAG edited A, B, E, F, *, removed 67VNlR0FbP.TcV"
  log "commited changes to $BRANCH"
end