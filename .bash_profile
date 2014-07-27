source ~/.bash.git
source ~/.git-prompt.sh
source ~/.shell_prompt.sh

alias ll='ls -lh'

export EDITOR=vim

export PATH=~/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH

function go {
if [ "$1" = "workspace" ]; then
  cd "$HOME/workspace"
fi
if [ "$1" = "ws" ]; then
  cd "$HOME/workspace"
fi
if [ -d "$HOME/workspace/$1_trunk" ]; then
  cd "$HOME/workspace/$1_trunk"
fi
if [ -d "$HOME/workspace/$1" ]; then
  cd "$HOME/workspace/$1"
fi
if [ -z "$1" ]; then
  cd "$HOME"
fi
}

#End
