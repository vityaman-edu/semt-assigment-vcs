# GIT

## Reference

- [Git: Getting started](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)

## Commands

```bash
git clone

git fetch origin
git pull # fetch and merge origin/branch

git checkout branch-name
git checkout -b branch-name

git add -A
git commit -n "commit message"
git push

git remote -v
git remote show origin

git tag
git tag -l "v1.8.5*"
git tag -a v1.4 -m "my version 1.4"
git tag v1.4-lw
git tag -d v1.4-lw
git push origin v1.5
git push origin --tags
git push origin :refs/tags/v1.4-lw
git push origin --delete <tagname>
git checkout v2.0.0

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
```

## Recepies

```bash
# Add forgotten file to commit 
git commit -m 'Initial commit'
git add forgotten_file
git commit --amend

# Discard changes of file
git checkout -- changed-file.ext
# or
git restore changed-file.ext

```
