. ci/git/lib/head.sh --source-only
TARGET="clean"
. ci/git/lib/dsl.sh --source-only

begin
  remove ~/.gitrepo/$REPO_NAME/.git
  remove ~/.gitrepo/$REPO_NAME
end