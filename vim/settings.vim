set encoding=UTF-8
set mouse=a "allow mouse support
set wrap " Automatically wrap text that extends beyond the screen length.



" Indentation options
set autoindent
set expandtab       " tabs are space
set shiftround "always round indents to the nearest shift width
set splitright " open new split panes to right and below
set smarttab " Insert “tabstop” number of spaces when the “tab” key is pressed.
set shiftwidth=4    " number of spaces to use for autoindent
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set scrolloff=5     " Display 5 lines above/below the cursor when scrolling with a mouse.
set splitbelow
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif


" Display options -------
set showmode
set showcmd
set number " Show line numbers
set showmatch " Show matching brackets
set inccommand=split                " nice preview of search and replace actions
set hlsearch                        " highlight all search matches
set textwidth=79                    " max width
set formatoptions+=j                " remove comment characters when joining lines
set formatoptions+=n                " indent numbered lists
set colorcolumn=0
let g:rainbow_active = 1            " rainbow brackets 
" set t_Co=256
" set background=dark
set termguicolors
" set cursorline
let g:airline_theme='onedark'
let g:onedark_termcolors=16
let g:onedark_terminal_italics=1
colorscheme onedark

" let g:material_terminal_italics = 1
" let g:material_theme_style = 'palenight'
" colorscheme material
" 
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

"no line numbers in a markdown file
autocmd filetype markdown setlocal nonumber

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

set clipboard+=unnamedplus

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END


