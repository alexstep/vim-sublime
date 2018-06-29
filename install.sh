#!/bin/bash 

#apt-get install vim -y
mkdir -p $HOME/.vim/bundle

git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

curl https://raw.githubusercontent.com/alexstep/vim-sublime/master/vimrc > $HOME/.vimrc

cd ~/.vim/ && git clone --depth=1 https://github.com/flazz/vim-colorschemes
mv vim-colorschemes/colors ./ && rm -rf vim-colorschemes

vim -c "PluginInstall"
