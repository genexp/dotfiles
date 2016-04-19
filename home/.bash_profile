#!/usr/bin/env bash

# Add rvm gems and nginx to the path
export PATH=/usr/local/bin:$PATH:~/bin:/usr/local/share/npm/bin
export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin

# Path to the bash it configuration
export BASH_IT="/Users/brian/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='candy'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Docker
eval $(docker-machine env default)

# Load Bash It
source $BASH_IT/bash_it.sh

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
