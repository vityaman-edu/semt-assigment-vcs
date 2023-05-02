#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit0"
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

svn add *

svn commit -m "$TAG added A, B, E, F"

log "finished $TARGET"
