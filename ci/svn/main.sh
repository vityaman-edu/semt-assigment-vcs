#!/bin/bash

set -e

cd $(dirname -- "$0"; )
cd ../..

echo "[svn:main] started 'demonstration'"
echo "[svn:main] pwd: $(pwd)"

bash ci/svn/clean.sh
bash ci/svn/init.sh
