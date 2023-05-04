#!/bin/bash

. ci/svn/lib/head.sh --source-only
TARGET="init"
. ci/svn/lib/dsl.sh --source-only

begin
  log "repo is $REPO_NAME"
  
  # Create an empty SVN repository
  mkdir -p ~/.svnrepos/
  svnadmin create ~/.svnrepos/$REPO_NAME
  
  log "repository created"
  
  # Initialize SVN repo with default structure
  # as trunk (main branch), branches (a directory
  # with branches), tags for semantic version binds
  svn mkdir -m "Create repository structure." \
    file://$HOME/.svnrepos/$REPO_NAME/trunk \
    file://$HOME/.svnrepos/$REPO_NAME/branches \
    file://$HOME/.svnrepos/$REPO_NAME/tags
  
  log "repository initialized"

  mkdir -p playground/$REPO_NAME
  cd playground/$REPO_NAME

  # Mount remote trunk into local one
  svn checkout file://$HOME/.svnrepos/$REPO_NAME/trunk trunk
  cd trunk

  # Make an initial setup
  svn add --force .               # Add all files
  svn commit -m "Initial import." # Push changes to remote
  svn update                      # Pull changes from remote
end