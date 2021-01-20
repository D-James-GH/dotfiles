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
set background=dark
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

  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"set t_Co=256
" set cursorline
let g:airline_theme='onedark'
" let g:onedark_termcolors=16
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


