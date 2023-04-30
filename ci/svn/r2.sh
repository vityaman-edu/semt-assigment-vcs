#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="feature-1"
COMMIT="commit2"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME

svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/trunk \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH \
    -m "Creating a branch for a feature #1"

log "created a branch $BRANCH for a feature #1"

svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH \
    ./

cd $BRANCH

log "checkout to branch $BRANCH"

copy ../../../history/$COMMIT/A.java A.java
copy ../../../history/$COMMIT/B.java B.java
copy ../../../history/$COMMIT/E.java E.java
copy ../../../history/$COMMIT/F.java F.java

svn commit -m "$TAG edited A, B, E, F"

log "commited changes to $BRANCH"

svn update

log "finished $TARGET"
