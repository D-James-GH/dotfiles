call plug#begin("~/.vim/plugged")
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'natebosch/dartlang-snippets'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
" color schemes
"Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
call plug#end()

" Helps force plugins to load correctly when it is turned back on below
filetype off

filetype on
syntax on
" For plugins to load correctly
filetype plugin indent on
filetype plugin on
 autocmd FileType typescript :set makeprg=tsc

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"Standard vim Config Section edited ===============================================
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

let g:lsc_auto_map = v:true


source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
"source ~/.config/nvim/denite.vim
source ~/.config/nvim/cocsettings.vim





