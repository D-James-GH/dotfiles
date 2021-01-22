" set leader
let mapleader = ","

" jump visual lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
"remap terminal close to make it easier
augroup TerminalStuff
   au! 
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" NERDTree config
nnoremap <C-t> :NERDTreeToggle<CR>

" flutter/dart mapping
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
