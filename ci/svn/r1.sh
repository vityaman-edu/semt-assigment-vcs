#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit1"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME

svn checkout file://$HOME/.svnrepos/$REPO_NAME/$BRANCH ./

copy ../../history/$COMMIT/A.java A.java
copy ../../history/$COMMIT/B.java B.java
copy ../../history/$COMMIT/E.java E.java
copy ../../history/$COMMIT/F.java F.java

svn commit -m "$TAG edited A, B, E, F"

svn update

log "finished $TARGET"
