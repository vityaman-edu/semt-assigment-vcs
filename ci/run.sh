#!/bin/bash

set -e

cd $(dirname -- "$0"; )
cd ..

bash ci/$1/main.sh
