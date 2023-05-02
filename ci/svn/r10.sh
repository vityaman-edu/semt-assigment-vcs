#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit10"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
copy "$SRC/*"              "*"
copy "$SRC/67VNlR0FbP.TcV" "67VNlR0FbP.TcV"
copy $SRC/A.java           A.java
copy $SRC/B.java           B.java
copy $SRC/E.java           E.java
copy $SRC/F.java           F.java

svn add "*"
svn add "67VNlR0FbP.TcV"

svn commit -m "$TAG edited A, B, E, F, restored *, added 67VNlR0FbP.TcV"
log "commited changes to $BRANCH"

log "finished $TARGET"
