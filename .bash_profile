source ~/.bash.git
source ~/.git-prompt.sh
source ~/.shell_prompt.sh

alias ll='ls -lh'
export EDITOR=vim

export PATH=/usr/local/linkedin/bin:~/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH

alias cleanup="mint kill; mint clean; mint clean-containers"

function deploy { mint dev build build-cfg deploy -w "$1" -f "$2" ;}

function undeploy { mint undeploy --config "$2" -w "$1" ;}

function debug { mint dev build -w "$1" ; mint dev build-cfg -w "$1" -f "$2" ; mint deploy --debug-app -w "$1" -f "$2" ;}

function debugall {

num=1;

while [ $num -lt $# ]

do

    (( num++ ))

    echo mint dev build -w "${!num}";

    mint dev build -w "${!num}" ;

    echo mint dev build-cfg -w "${!num}" -f "$1" ;

    mint dev build-cfg -w "${!num}" -f "$1";

    echo mint deploy --debug-app -w "${!num}" -f "$1";

    mint deploy --debug-app -w "${!num}" -f "$1";

done

}


function ssh-password {
eval `ssh-agent -s`
ssh-add ~/.ssh/yizhao_at_linkedin.com_dsa_key
}

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
