call plug#begin("~/.vim/plugged")
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hzchirs/vim-material'
Plug 'luochen1990/rainbow'
Plug 'joshdick/onedark.vim'
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
Plug 'natebosch/dartlang-snippets'
call plug#end()

"Standard vim Config Section edited ===============================================
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

let g:lsc_auto_map = v:true


source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/denite.vim
source ~/.config/nvim/cocsettings.vim






