#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit14"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit "rvvddKJVqH.1iP"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn add "rvvddKJVqH.1iP"

  svn commit \
    -m "$TAG edited A, B, E, F, added rvvddKJVqH.1iP"
  log "commited changes to $BRANCH"
end