TAG="[$VSC_NAME:$TARGET]"

log() {
  # Prints $1 to stdout
  echo "$TAG $1"
}

remove() {
  # Remove file
  rm -rf $1
  log "removed $1"
}

copy() {
  # Copy file
  cp "$1" "$2"
  log "copied $1 to $2"
}

call() {
  # Calls script routine
  bash "$SCRIPT/$1.sh"
}

begin() {
  # Begin a task
  log "started $TARGET"
}

end() {
  # Ends a task
  log "finished $TARGET"
}

enter() {
  # Enters a required repository branch 
  # sets a username depending on 
  # branch - red commits to trunk

  SRC=../../../history/$COMMIT
  cd playground/$REPO_NAME/$BRANCH

  USERNAME="blue"
  if [[ $BRANCH = "trunk" ]]; then
    USERNAME="red"
  fi
  svn update --username $USERNAME
}

edit() {
  # Edit file $1
  copy "$SRC/$1" "$1"
}

delete() {
  remove $1
}

branch() {
  # $1 - source branch name, e.g. "trunk" or "branches/my-branch"
  # $2 - target branch name, e.g. "my-branch"
  # $3 - message

  # Creates a branch from $1 with name $2
  svn copy \
    file://$HOME/.svnrepos/$REPO_NAME/$1 \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$2 \
    -m "$3"
  log $3

  # Mount remote directory to local one
  cd playground/$REPO_NAME
  svn checkout \
    file://$HOME/.svnrepos/$REPO_NAME/branches/$2 $2
  log "checkout to branch $2"
  cd ../..
}
