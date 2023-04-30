#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started $TARGET"

cd playground/$REPO_NAME

svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk ./
svn update

copy ../../history/$COMMIT/A.java A.java
copy ../../history/$COMMIT/B.java B.java
copy ../../history/$COMMIT/E.java E.java
copy ../../history/$COMMIT/F.java F.java

svn add A.java
svn add B.java
svn add E.java
svn add F.java

svn commit -m "$TAG added A, B, E, F"

svn update

log "finished $TARGET"