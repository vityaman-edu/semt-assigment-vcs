#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit6"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter
  
  svn merge ^/branches/feature-1
  log "merged feature-1 into trunk"

  delete "3yNy8wQeGi.Xzj"
  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn remove "3yNy8wQeGi.Xzj"

  svn commit -m "merged feature-1, $TAG edited A, B, E, F, removed 3yNy8wQeGi.Xzj"
  log "commited changes to $BRANCH"
end