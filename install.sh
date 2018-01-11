#!/bin/bash

set -eu

sudo apt update
sudo apt upgrade

sudo apt -y install language-pack-ja
sudo apt -y install vim
sudo apt -y install git
sudo apt -y install g++
sudo apt -y install make

mkdir -p ~/workspace
cd ~/workspace

git clone https://github.com/n4cl/vim-settings.git
ln -s ~/workspace/vim-settings/.vimrc ~/.vimrc

git clone https://github.com/n4cl/shell-settings.git
ln -s ~/workspace/shell-settings/.zshrc ~/.zshrc

