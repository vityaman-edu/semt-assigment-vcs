#!/bin/bash
. ci/svn/lib/head.sh --source-only
TARGET="clean"
. ci/svn/lib/import.sh --source-only

log "started task '$TARGET'"

remove playground/$REPO_NAME
remove ~/.svnrepos/$REPO_NAME

log "finished task '$TARGET'"
