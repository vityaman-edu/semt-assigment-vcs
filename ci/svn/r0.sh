#!/bin/bash
. ci/svn/lib/head.sh --source-only
BRANCH="red"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/import.sh --source-only

log "started r0"

log "finished r0"
