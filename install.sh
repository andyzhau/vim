#!/bin/sh

# backup existing files

ROOT=`pwd`

if [ ! -d "$HOME/.backup" ]; then
  mkdir ~/.backup

  mv ~/.bash_profile ~/.backup
  mv ~/.bashrc ~/.backup
  mv ~/.git-prompt.sh ~/.backup
  mv ~/.inputrc ~/.backup
  mv ~/.shell_prompt.sh ~/.backup
  mv ~/.vim ~/.backup
  mv ~/.vimrc ~/.backup
# else
  # rm -rf ~/.vim
fi

# copy setting files

cp .bash_profile ~/
cp .bashrc ~/
cp .git-prompt.sh ~/
cp .inputrc ~/
cp .shell_prompt.sh ~/
cp -r .vim ~/
cp .vimrc ~/

if [ ! -f "$HOME/.vim/libs/checkstyle-5.7-all.jar" ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall

  rm /tmp/checkstyle-5.7-bin.zip

  wget -P /tmp/ \
    http://downloads.sourceforge.net/project/checkstyle/checkstyle/5.7/checkstyle-5.7-bin.zip

  unzip -d /tmp/ /tmp/checkstyle-5.7-bin.zip

  mkdir -p ~/.vim/libs

  cp /tmp/checkstyle-5.7/checkstyle-5.7-all.jar ~/.vim/libs
fi


if [ -d "$HOME/.vim/bundle/vimproc.vim" ]; then
  cd "$HOME/.vim/bundle/vimproc.vim"
  make
  cd $ROOT
fi
