call plug#begin("~/.vim/plugged")
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'hzchirs/vim-material'
Plug 'luochen1990/rainbow'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"Standard vim Config Section edited ===============================================




source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/denite.vim
source ~/.config/nvim/cocsettings.vim






