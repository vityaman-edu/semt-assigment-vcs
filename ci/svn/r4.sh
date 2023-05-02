#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="feature-2"
COMMIT="commit4"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  branch "trunk" $BRANCH  "Creating a branch for a feature #2"

  enter

  delete "*"
  delete "3yNy8wQeGi.Xzj"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn delete "*"
  svn delete "3yNy8wQeGi.Xzj"

  svn commit -m "$TAG edited A, B, E, F, removed *, 3yNy8wQeGi.Xzj"
  log "commited changes to $BRANCH"
end