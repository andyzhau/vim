source ~/.bash.git
source ~/.git-prompt.sh
source ~/.shell_prompt.sh

if [ -f ~/.bash.linkedin ]; then
  source ~/.bash.linkedin
fi


alias ll='ls -lh'

export EDITOR=vim

export PATH=~/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH

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

#End
