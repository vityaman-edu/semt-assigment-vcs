set -e

cd $(dirname -- "$0"; )
cd ../..
HISTORY_PATH=$(pwd)/history
USERS_REPO=~/.user_repo
ARTEM="Artem"
VITYA="Vitya"

VSC_NAME="git-r"
REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
SCRIPT="ci/git-r"
URL=~/.gitrepo/$REPO_NAME