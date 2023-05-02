#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit14"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
copy "$SRC/rvvddKJVqH.1iP" "rvvddKJVqH.1iP"
copy $SRC/A.java    A.java
copy $SRC/B.java    B.java
copy $SRC/E.java    E.java
copy $SRC/F.java    F.java

svn add "rvvddKJVqH.1iP"

svn commit -m "$TAG edited A, B, E, F, added rvvddKJVqH.1iP"
log "commited changes to $BRANCH"

log "finished $TARGET"
