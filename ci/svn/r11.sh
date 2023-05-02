#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit11"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
remove "67VNlR0FbP.TcV"
copy "$SRC/*"              "*"
copy $SRC/A.java           A.java
copy $SRC/B.java           B.java
copy $SRC/E.java           E.java
copy $SRC/F.java           F.java

svn remove "67VNlR0FbP.TcV"

svn commit -m "$TAG edited A, B, E, F, *, removed 67VNlR0FbP.TcV"
log "commited changes to $BRANCH"

log "finished $TARGET"
