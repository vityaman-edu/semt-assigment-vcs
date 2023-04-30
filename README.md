# SEMT Assigment: VCS

## Project Structure

```bash
export $VSC_NAME="git" # or "svn"
ls ci/$VSC_NAME        # scripts for simulation
ls doc/$VSC_NAME       # some docs for youself
ls history             # commit history to simulate
ls playground/semt-assigment-vcs-$VSC_NAME-repository
```

## Code-Style

```bash
export $VSC_NAME="git" # or "svn"
export $REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
export $SCRIPT_NAME="example" # clean or init or main or ...
export $SCRIPT_MESSAGE_PREFIX="[$VSC_NAME:$SCRIPT_NAME]"
export $SCRIPT_MESSAGE="$SCRIPT_MESSAGE_PREFIX example message"
```

## Script Head Example

```bash
#!/bin/bash
set -e
cd $(dirname -- "$0"; )
cd ../..
export VSC_NAME="svn"
export TARGET="main"
export TAG="[$VSC_NAME:$TARGET]"
export REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
```

## Contribute

```bash
export $VSC_NAME="git" # or "svn"
git checkout trunk
git pull
git checkout -b $VSC_NAME-descriptive-name
# ...
git add -A
git commit -m "[$VSC_NAME] changes description"
git push
# * create a pull request into trunk *
```
