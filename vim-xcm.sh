#!/bin/bash

apt-get -qq install -y vim curl git

curl --silent -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null

cat << EOF >> ~/.vimrc
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dmerejkowsky/vim-ale'
call plug#end()
EOF

echo "-----------------------------------"
echo
echo ">> VIM-XCM Installed"
echo
echo "Start VIM and execute ":PlugInstall" Command"
echo
echo "-----------------------------------"
