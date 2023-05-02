TAG="[$VSC_NAME:$TARGET]"


log() {
  echo "$TAG $1"
}

remove() {
  rm -rf $1
  log "removed $1"
}

copy() {
  cp "$1" "$2"
  log "copied $1 to $2"
}

call() {
  bash "$SCRIPT/$1.sh"
}

begin() {
  log "started $TARGET"
}

end() {
  log "finished $TARGET"
}

enter() {
  SRC=../../../history/$COMMIT
  cd playground/$REPO_NAME/$BRANCH
}

edit() {
  copy "$SRC/$1" "$1"
}

delete() {
  remove $1
}

branch() {
  # $1 - source branch name, e.g. "trunk" or "branches/my-branch"
  # $2 - target branch name, e.g. "my-branch"
  # $3 - message

  svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/$1 \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$2 \
    -m "$3"
  log $3
  
  cd playground/$REPO_NAME
  svn checkout \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$2 $2
  log "checkout to branch $2"
  cd ../..
}
