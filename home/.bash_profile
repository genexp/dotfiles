#!/usr/bin/env bash

# Add rvm gems and nginx to the path
export PATH=/usr/local/bin:$PATH:~/bin:/usr/local/share/npm/bin 

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='candy'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="~/bin/subl -w"
export GIT_EDITOR='~/bin/subl -w'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt
#alias composer="hhvm /usr/local/bin/composer"  

# Load Bash It
source $BASH_IT/bash_it.sh

alias use_php53="brew unlink php54 && brew unlink php55 && brew unlink php53 && brew link php53"
alias use_php54="brew unlink php53 && brew unlink php55 && brew unlink php54 && brew link php54"
alias use_php55="brew unlink php53 && brew unlink php54 && brew unlink php55 && brew link php55"
