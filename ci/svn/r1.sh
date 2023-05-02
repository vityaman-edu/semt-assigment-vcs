#!/bin/bash

. ci/svn/lib/head.sh --source-only
BRANCH="trunk"
COMMIT="commit1"
TARGET="$BRANCH:$COMMIT"
. ci/svn/lib/dsl.sh --source-only

begin
  enter

  edit A.java
  edit B.java
  edit E.java
  edit F.java

  svn commit -m "$TAG edited A, B, E, F"
end