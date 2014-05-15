set -gx OS (uname -s | tr '[:upper:]' '[:lower:]')
set -gx OSVERSION (expr (uname -r) : '[^0-9]*\([0-9]*\.[0-9]*\)')
set -gx MACHINE (uname -m | tr '[:upper:]' '[:lower:]')
set -gx PLATFORM "$MACHINE-$OS-$OSVERSION"

# Globally recognised variables
set -gx PAGER less

# Various programs
set -gx GREP_OPTIONS '--color=auto'

# Global Path
set -g -x PATH /usr/local/bin $PATH
set -g -x PATH /usr/local/sbin $PATH
set -g -x PATH /usr/local/share/npm/bin $PATH
set -g -x PATH $HOME/bin $PATH

if [ "$OS" = "linux" ]
  set -gx VIM (which vim)
  if test -x $VIM
    set -gx VISUAL $VIM
    set -gx EDITOR $VIM
  end
end

if [ "$OS" = "freebsd" ]
  set -gx VIM (which vim)
  if test -x $VIM
    set -gx VISUAL $VIM
    set -gx EDITOR $VIM
  end
end

if [ "$OS" = "darwin" ]
  # Configure Homebrew -- it likes to be ahead of the Apple bin
  # test -d "/usr/local/bin"; and set PATH "/usr/local/bin" $PATH

  # Tool Paths
  set -g -x PATH $HOME/.rvm/bin $PATH
  set -g -x PATH /usr/local/heroku/bin $PATH

  set -gx SUBL (which subl)
  if test -x $SUBL
    set -gx VISUAL "$SUBL -w"
    set -gx EDITOR "$SUBL -w"
    set -gx GIT_EDITOR "$SUBL -w"
  end

  function fish_greeting
    archey -c
  end
end

source "$HOME/.homesick/repos/homeshick/homeshick.fish"
