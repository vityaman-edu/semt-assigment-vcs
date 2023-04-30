# SEMT Assigment: VCS

## Project Structure

```bash
VSC_NAME="git" # or "svn"
ls ci/$VSC_NAME        # scripts for simulation
ls doc/$VSC_NAME       # some docs for youself
ls history             # commit history to simulate
ls playground/semt-assigment-vcs-$VSC_NAME-repository
```

## Code-Style

```bash
VSC_NAME="git" # or "svn"
REPO_NAME="semt-assigment-vcs-$VSC_NAME-repository"
SCRIPT_NAME="example" # clean or init or main or ...
SCRIPT_MESSAGE_PREFIX="[$VSC_NAME:$SCRIPT_NAME]"
SCRIPT_MESSAGE="$SCRIPT_MESSAGE_PREFIX example message"
```

## Contribute

```bash
VSC_NAME="git" # or "svn"
git checkout trunk
git pull
git checkout -b $VSC_NAME-descriptive-name
# ...
git add -A
git commit -m "[$VSC_NAME] changes description"
git push
# * create a pull request into trunk *
```
