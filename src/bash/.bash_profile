#!/usr/bin/env bash


bash_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
root_dir="$(dirname $bash_dir)"

################################################################################
#                             Source related files                             #
################################################################################

source $bash_dir/.bash.git
source $bash_dir/.git-prompt.sh
source $bash_dir/.shell_prompt.sh


################################################################################
#                                   Exports                                    #
################################################################################

export PATH=$root_dir/bin:$PATH

export EDITOR=vim

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH


################################################################################
#                                    Alias                                     #
################################################################################

alias ll='ls -lh'
alias s="search"


################################################################################
#                                  Functions                                   #
################################################################################

function go {

  if [ "$1" = "home" ]; then
    cd "$HOME"
  fi

  if [ -d "$HOME/workspace/$1_trunk" ]; then
    cd "$HOME/workspace/$1_trunk"
  fi

  if [ -d "$HOME/workspace/$1" ]; then
    cd "$HOME/workspace/$1"
  fi

  if [ -z "$1" ]; then
    cd "$HOME/workspace"
  fi
}
