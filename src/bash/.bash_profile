#!/usr/bin/env bash


bash_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
root_dir="$(dirname $bash_dir)"

################################################################################
#                             Source related files                             #
################################################################################

source $bash_dir/.bash.git
# source $bash_dir/.git-prompt.sh
# source $bash_dir/.shell_prompt.sh
source ~/workspace/.bash-git-prompt/gitprompt.sh


################################################################################
#                                   Exports                                    #
################################################################################

export PATH=$root_dir/bin:$PATH

export EDITOR=vim

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH

################################################################################
#                                  Settings                                    #
################################################################################

HISTFILESIZE=10000

################################################################################
#                                    Alias                                     #
################################################################################

alias ll='ls -lh'
alias s="search"


################################################################################
#                                     Brew                                     #
################################################################################
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"


################################################################################
#                                  Functions                                   #
################################################################################

function go {

  place=$1

  if [ "$place" = "home" ]; then
    cd "$HOME"
  fi

  if [ "$place" = "eng-portal" ]; then
    ssh -A eng-portal
  fi

  if [ -n "${!1}" ]; then
    ssh -K ${!1}
  fi

  if [[ "documents downloads" =~ "$place" ]]; then
    place=${place^}
  fi

  if [ -d "$HOME/workspace/$place" ]; then
    cd "$HOME/workspace/$place"
  fi

  if [ -d "$HOME/$place" ]; then
    cd "$HOME/$place"
  fi
}

_go()
{
  local cur prev opts base
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  opts="magic canasta nertz war eng-portal home workspace downloads documents \
    $(ls -d -1 ~/workspace/*/ | xargs -n1 basename | tr '\n' ' ')"

  COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
  return 0
}

complete -F _go go
