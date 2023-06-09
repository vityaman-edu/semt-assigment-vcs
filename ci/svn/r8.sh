#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="feature-2"
COMMIT="commit8"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit "*"
  edit "3yNy8wQeGi.Xzj"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  # Track new files
  svn add "*"
  svn add "3yNy8wQeGi.Xzj"

  svn commit -m "$TAG edited A, B, E, F, added *, 3yNy8wQeGi.Xzj"
end