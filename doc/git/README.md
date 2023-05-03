# GIT

## Reference

- [Git: Getting started](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
- [Git: On a Server](https://git-scm.com/book/en/v2/Git-on-the-Server-Getting-Git-on-a-Server)

## Commands

```bash
git clone

git fetch origin
git pull # fetch and merge origin/branch

git checkout branch-name
git checkout -b branch-name

git add -A
git commit -m "commit message"
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

## Branches

```bash
git log --oneline --decorate --graph --all # view

git checkout master
git checkout -b dev # ~ git branch dev && git checkout dev

git switch testing-branch # ~ git checkout branch
git switch -c new-branch
git switch --create new-branch
git switch - # Return to your previously checked out branch

git merge hotfix # into current branch

git branch -d hotfix # delete the branch
git branch -v
git branch --merged
git branch --no-merged master
git branch --no-merged

git mergetool

git checkout experiment
git rebase master
git checkout master
git merge experiment
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

# Makes git push for a new branch easier
git config --global --add --bool push.autoSetupRemote true

# Shorthand git add -A && git commit -m "commit message"
git commit -a -m "message" 

# Rename a branch
git branch --move bad-branch-name corrected-branch-name
git push --set-upstream origin corrected-branch-name
git push origin --delete bad-branch-name
```
