#!/bin/bash

. ci/svn/lib/head.sh --source-only
TARGET="clean"
. ci/svn/lib/dsl.sh --source-only

begin
  remove playground/$REPO_NAME
  remove ~/.svnrepos/$REPO_NAME
end
