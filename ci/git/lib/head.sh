set -e

cd $(dirname -- "$0"; )
cd ../..
HISTORY_PATH=$(pwd)/history

VSC_NAME="git"
REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
SCRIPT="ci/git"