set -e

cd $(dirname -- "$0"; )
cd ../..

VSC_NAME="git"
REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
SCRIPT="ci/git"