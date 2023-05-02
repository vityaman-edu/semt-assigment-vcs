#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="feature-2"
COMMIT="commit4"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/trunk \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH \
    -m "Creating a branch $BRANCH for a feature #2"
log "created a branch $BRANCH for a feature #2"

cd playground/$REPO_NAME

svn checkout file://$HOME/.svnrepos/$REPO_NAME/branches/$BRANCH $BRANCH
log "checkout to branch $BRANCH"
cd $BRANCH

SRC=../../../history/$COMMIT
remove "*"
remove "3yNy8wQeGi.Xzj"
copy $SRC/A.java A.java
copy $SRC/B.java B.java
copy $SRC/E.java E.java
copy $SRC/F.java F.java

svn delete "*"
svn delete "3yNy8wQeGi.Xzj"

svn commit -m "$TAG edited A, B, E, F, removed *, 3yNy8wQeGi.Xzj"
log "commited changes to $BRANCH"

log "finished $TARGET"
