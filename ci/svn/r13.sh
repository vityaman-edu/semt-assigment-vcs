#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit13"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

svn mergeinfo ^/branches/feature-2
svn merge ^/branches/feature-2
log "merged feature-2 into trunk"

SRC=../../../history/$COMMIT
copy $SRC/A.java           A.java
copy $SRC/B.java           B.java
copy $SRC/E.java           E.java
copy $SRC/F.java           F.java

svn commit -m "$TAG edited A, B, E, F, merged feature-2 into $BRANCH"
log "commited changes to $BRANCH"

log "finished $TARGET"
