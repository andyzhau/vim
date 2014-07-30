#!/bin/sh

# backup existing files

mkdir ~/.backup

mv ~/.bash_profile ~/.backup
mv ~/.bash_rc ~/.backup
mv ~/.git-prompt.sh ~/.backup
mv ~/.shell_prompt.sh ~/.backup
mv ~/.vim ~/.backup
mv ~/.vimrc ~/.backup

# copy setting files

cp .bash_profile ~/
cp .bash_rc ~/
cp .git-prompt.sh ~/
cp .shell_prompt.sh ~/
cp -r .vim ~/
cp .vimrc ~/
