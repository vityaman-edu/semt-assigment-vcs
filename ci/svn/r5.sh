#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="feature-1"
COMMIT="commit5"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn commit -m "$TAG edited A, B, E, F"
  log "commited changes to $BRANCH"
end