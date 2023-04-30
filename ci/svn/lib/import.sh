
TAG="[$VSC_NAME:$TARGET]"

log() {
    echo "$TAG $1"
}

remove() {
    rm -rf $1
    log "removed $1"
}
