# Setting up linux console/terminal on a new pc

1. Update everything first

   - sudo apt update && sudo apt upgrade

2. Download and install zshell

   - sudo apt install zsh

3. Install oh-my-zsh for zsh

   - sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

4. Install powerlevel10k and set it as the theme in .zshrc

   - git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

5. Download nvm

   - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
   - Restart terminal

6. Install latest version of node

   - nvm install --lts

7. Install neovim

   - sudo apt install neovim

8. Install vim-plug
   - sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
9. Create directory nvim config

- mkdir ~/.config/nvim/
- copy the downloaded init.vim from this folder to the created one
- copy the coc-config.json file from this folder to the created one

11. Run :PlugInstall and :CocInstall
