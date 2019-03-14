#!/bin/bash
cp .zshrc ~/
cp .vimrc ~/
mkdir -p ~/.config/nvim
ln ~/.vimrc ~/.config/nvim/init.vim
cp .gitconfig ~/
cp .gitignore_global ~/