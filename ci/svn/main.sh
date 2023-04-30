#!/bin/bash
. ci/svn/lib/head.sh --source-only
TARGET="main"
. ci/svn/lib/import.sh --source-only

log "started 'demonstration'"
log "pwd: $(pwd)"

bash ci/svn/clean.sh
bash ci/svn/init.sh
bash ci/svn/r0.sh

log "finished 'demonstration'"
