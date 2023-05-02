#!/bin/bash
. ci/svn/lib/head.sh --source-only
TARGET="main"
. ci/svn/lib/import.sh --source-only

log "started 'demonstration'"
log "pwd: $(pwd)"

SCRIPT="ci/svn"
bash $SCRIPT/clean.sh
bash $SCRIPT/r_init.sh
bash $SCRIPT/r0.sh
bash $SCRIPT/r1.sh
bash $SCRIPT/r2.sh
bash $SCRIPT/r3.sh
bash $SCRIPT/r4.sh
bash $SCRIPT/r5.sh
bash $SCRIPT/r6.sh
bash $SCRIPT/r7.sh
bash $SCRIPT/r8.sh
bash $SCRIPT/r9.sh
bash $SCRIPT/r10.sh
bash $SCRIPT/r11.sh
bash $SCRIPT/r12.sh
bash $SCRIPT/r13.sh
bash $SCRIPT/r14.sh

log "finished 'demonstration'"
