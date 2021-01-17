#!/bin/bash

apt update -y

echo "### Installing Zsh"
apt install zsh -y

echo "### Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "### Install powerlevel"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSh_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "### Please change ZSH_THEME='powerlevel10k/powerlevel10k' in .zshrc"
