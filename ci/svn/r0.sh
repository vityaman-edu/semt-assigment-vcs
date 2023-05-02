#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit0"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn add *
  svn commit -m "$TAG added A, B, E, F"
end