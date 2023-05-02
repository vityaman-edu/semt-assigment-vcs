#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit6"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME/$BRANCH
svn update

svn merge ^/branches/feature-1
log "merged feature-1 into trunk"

SRC=../../../history/$COMMIT
copy $SRC/A.java A.java
copy $SRC/B.java B.java
copy $SRC/E.java E.java
copy $SRC/F.java F.java
remove "3yNy8wQeGi.Xzj"

svn remove "3yNy8wQeGi.Xzj"

svn commit -m "merged feature-1, $TAG edited A, B, E, F, removed 3yNy8wQeGi.Xzj"
log "commited changes to $BRANCH"

log "finished $TARGET"
