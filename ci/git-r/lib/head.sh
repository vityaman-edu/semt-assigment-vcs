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
URL=git+ssh://s337054@se.ifmo.ru:2222/home/studs/s337054/srv/git/project.git