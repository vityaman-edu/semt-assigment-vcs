. ci/git/lib/head.sh --source-only
TARGET="clean"
. ci/git/lib/dsl.sh --source-only

begin
  remove ~/.gitrepos/$REPO_NAME
end