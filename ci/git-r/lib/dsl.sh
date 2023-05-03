TAG="[$VSC_NAME:$TARGET]"

log() {
  echo "$TAG $1"
}

remove() {
  rm -rf $1
  log "removed $1"
}

add_all(){
    git add .
    log "added files from $TAG"
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

set_name() {
  git config --local user.name "$1"
}

set_email() {
  git config --local user.email "$2"
}

enter() {
  cd $USERS_REPO/$NAME
}

comm() {
    git commit -m "$1"
}