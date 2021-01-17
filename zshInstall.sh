#!/bin/bash

apt update -y

echo "### Installing Zsh"
apt install zsh -y

echo "### Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohm      yzsh/master/tools/install.sh)"

echo "### Install powerlevel"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohm      yzsh/master/tools/install.sh)"

echo "### Please change ZSH_THEME='powerlevel10k/powerlevel10k' in .zshrc"
