#!/bin/sh

# backup existing files

if [ ! -d "$HOME/.backup" ]; then
  mkdir ~/.backup

  mv ~/.bash_profile ~/.backup
  mv ~/.bashrc ~/.backup
  mv ~/.git-prompt.sh ~/.backup
  mv ~/.shell_prompt.sh ~/.backup
  mv ~/.vim ~/.backup
  mv ~/.vimrc ~/.backup
else
  rm -rf ~/.vim
fi

# copy setting files

cp .bash_profile ~/
cp .bashrc ~/
cp .git-prompt.sh ~/
cp .shell_prompt.sh ~/
cp -r .vim ~/
cp .vimrc ~/

if [ -d "$HOME/.vim" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall

  rm /tmp/checkstyle-5.7-bin.zip

  wget -P /tmp/ \
    http://downloads.sourceforge.net/project/checkstyle/checkstyle/5.7/checkstyle-5.7-bin.zip

  unzip -d /tmp/ /tmp/checkstyle-5.7-bin.zip

  mkdir -p ~/.vim/libs

  cp /tmp/checkstyle-5.7/checkstyle-5.7-all.jar ~/.vim/libs
fi
