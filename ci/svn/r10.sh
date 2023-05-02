#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit10"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit "*"
  edit "67VNlR0FbP.TcV"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn add "*"
  svn add "67VNlR0FbP.TcV"

  svn commit \
    -m "$TAG edited A, B, E, F, restored *, added 67VNlR0FbP.TcV"
  log "commited changes to $BRANCH"
end