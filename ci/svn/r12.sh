#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="feature-2"
COMMIT="commit12"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
remove              "*"
remove              "3yNy8wQeGi.Xzj"
copy $SRC/A.java    A.java
copy $SRC/B.java    B.java
copy $SRC/E.java    E.java
copy $SRC/F.java    F.java

svn remove "*"
svn remove "3yNy8wQeGi.Xzj"

svn commit -m "$TAG edited A, B, E, F, removed *, 3yNy8wQeGi.Xzj"
log "commited changes to $BRANCH"

log "finished $TARGET"
