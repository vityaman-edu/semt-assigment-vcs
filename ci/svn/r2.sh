#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="feature-1"
COMMIT="commit2"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/trunk \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH \
    -m "Creating a branch for a feature #1"
log "created a branch $BRANCH for a feature #1"

cd playground/$REPO_NAME

svn checkout file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH $BRANCH
log "checkout to branch $BRANCH"
cd $BRANCH

SRC=../../../history/$COMMIT
copy $SRC/A.java A.java
copy $SRC/B.java B.java
copy $SRC/E.java E.java
copy $SRC/F.java F.java

svn commit -m "$TAG edited A, B, E, F"
log "commited changes to $BRANCH"

log "finished $TARGET"
