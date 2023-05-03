. ci/git-r/lib/head.sh --source-only
TARGET="clean"
. ci/git-r/lib/dsl.sh --source-only

begin
  remove ~/.gitrepo/$REPO_NAME/.git
  remove ~/.gitrepo/$REPO_NAME
  remove $USERS_REPO/$ARTEM
  remove $USERS_REPO/$VITYA
end