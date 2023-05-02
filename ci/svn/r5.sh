#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="feature-1"
COMMIT="commit5"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
copy $SRC/A.java A.java
copy $SRC/B.java B.java
copy $SRC/E.java E.java
copy $SRC/F.java F.java

svn commit -m "$TAG edited A, B, E, F"
log "commited changes to $BRANCH"

log "finished $TARGET"
