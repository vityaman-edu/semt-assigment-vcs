#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit3"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

SRC=../../../history/$COMMIT
copy "$SRC/*"              "*"
copy "$SRC/3yNy8wQeGi.Xzj" "3yNy8wQeGi.Xzj"
copy $SRC/A.java           A.java
copy $SRC/B.java           B.java
copy $SRC/E.java           E.java
copy $SRC/F.java           F.java

svn add "*"
svn add "3yNy8wQeGi.Xzj"

svn commit -m "$TAG edited A, B, E, F, added *, 3yNy8wQeGi.Xzj"
svn update

log "finished $TARGET"
