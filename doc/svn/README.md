# SVN

## Reference

- [Subversion: Quick start](https://subversion.apache.org/quick-start)
- [Subversion: Book](https://svnbook.red-bean.com/nightly/en/svn.content.html)
- [Subversion: Branching](https://svnbook.red-bean.com/nightly/en/svn.branchmerge.html)

## Commands

Basic commands:

```bash
svn status
svn diff

svn add filename.ext
svn commit -m "My Descriptive Log Message"

svn move src.ext dest.ext
svn copy src.ext dest.ext
svn delete filename.ext

svn revert filename.ext

svn copy \
    https://example.com/MyRepo/trunk \
    https://example.com/MyRepo/branches/MyNewBranch \
    -m "Creating a new branch"

svn checkout https://example.com/MyRepo/trunk .
```

## Setting up a local repository

```bash
export REPO_NAME="semt-assigment-vcs-svn-repository"

mkdir -p ~/.svnrepos/
svnadmin create ~/.svnrepos/$REPO_NAME

svn mkdir -m "Create repository structure." \
  file://$HOME/.svnrepos/$REPO_NAME/trunk \
  file://$HOME/.svnrepos/$REPO_NAME/branches \
  file://$HOME/.svnrepos/$REPO_NAME/tags

mkdir -p playground/$REPO_NAME
cd playground/$REPO_NAME
svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk ./
svn add --force ./
svn commit -m "Initial import."
svn update
```

## Create a branch

```bash
svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/branches/source-branch \
    file://$HOME/.svnrepos/$REPO_NAME/branches/target-branch \
    -m "Message about branch creation"
```

## Checkout a branch

```bash
svn checkout \
  file://$HOME/.svnrepos/$REPO_NAME/branches/target-branch \
  local-directory-for-the-branch
```

## Merge branches

```bash
# Assume we are in directory with target branch
svn merge ^/branches/source-branch
```

## Tricks

`^` in svn commands when you are in directory with `.svn`,
interpreted as url for your repo.

```bash
svn merge ^/branches/source-branch
# is the same as
svn merge https://svn.itmo.ru/se/semt/lab/2/project/branches/source-branch
```
