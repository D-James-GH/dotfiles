#!/bin/zsh

apt update -y 

echo "### installing git"
apt install git -y

echo "### configure git"
echo "Enter Global git user name:"
read GITUSER
git config --global user.name "${GITUSER}"
echo "Enter Global Email for git"
read GITEMAIL 
git config --global user.email "${GITEMAIL}"
echo "Git has been configured"

echo "### Install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
exec zsh

echo "### Install latest lts for nodejs"
nvm install --lts

echo "### Install neovim"
apt install neovim -y

echo "### Install vim-plug for neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "### Creating nvim config location"
mkdir ~/.config/nvim
echo "### Copy config accross from the dotfiles folder located in ~"
cp ~/dotfiles/init.vim ~/.config/nvim
cp ~/dotfiles/coc-settings.json ~/.config/nvim

echo "### Install npm neovim"
npm install -g neovim