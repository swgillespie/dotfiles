#!/bin/bash
set -e

sudo apt-get install git vim cmake python-dev libpython3-dev

echo "[+] Acquiring dotfiles repo"
git clone git@github.com:swgillespie/dotfiles.git ~/.dotfiles

echo "[+] Symlinking .vimrc"
ln -s ~/.dotfiles/.vimrc .vimrc

echo "[+] Acquiring Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "[+] Installing packages"
vim -c "PluginInstall"

echo "[+] Compiling YouCompleteMe"
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

echo "[+] Done!"
