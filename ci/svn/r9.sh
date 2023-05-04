#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit9"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  delete "*"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  # Untrack file *
  svn remove "*"

  svn commit -m "$TAG edited A, B, E, F, removed *"
  log "commited changes to $BRANCH"
end