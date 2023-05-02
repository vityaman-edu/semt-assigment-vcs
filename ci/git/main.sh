#!/bin/bash

. ci/git/lib/head.sh --source-only
TARGET="main"
. ci/git/lib/dsl.sh --source-only

begin
  call clean
  call init
  call r0
  call r1
end
