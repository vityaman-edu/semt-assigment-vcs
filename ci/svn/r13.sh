#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit13"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  svn mergeinfo ^/branches/feature-2
  svn merge ^/branches/feature-2
  log "merged feature-2 into trunk"

  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn commit -m \
    "$TAG edited A, B, E, F, merged feature-2 into $BRANCH"
  log "commited changes to $BRANCH"
end