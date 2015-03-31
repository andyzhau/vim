# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bash.local ]; then
	. ~/.bash.local
fi

source ~/.bash_profile

# User specific aliases and functions
