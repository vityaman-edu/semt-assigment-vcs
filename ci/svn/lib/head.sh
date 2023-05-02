set -e

cd $(dirname -- "$0"; )
cd ../..

VSC_NAME="svn"
REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
SCRIPT="ci/svn"
