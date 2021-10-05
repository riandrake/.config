" Common settings I use across all configurations (vim, gvim, neovim, ideavim etc)

" press escape to clear search highlight
nnoremap <esc> :noh<return><esc>

" Preferred colorscheme
color onedark

" Never wrap text
set nowrap

" Use the system clipboard as the default register
set clipboard=unnamed

" Search behaviour (/)
set hlsearch
set incsearch
set smartcase

" Preferred line numbers
set number
set relativenumber

" Keeps the top/bottom of the screen at least 5 lines away from the cursor
set scrolloff=5

" Highlight the line the cursor is on
set cursorline

" Preferred leader key (spacebar)
let mapleader=" "
nnoremap <space> <nop>

" Quick save/quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Split navigation
nnoremap <a-h> <c-w><c-h>
nnoremap <a-j> <c-w><c-j>
nnoremap <a-k> <c-w><c-k>
nnoremap <a-l> <c-w><c-l>

" buffer navigation
nnoremap <silent> <a-h> :bprevious<cr>
nnoremap <silent> <a-l> :bnext<cr>

" No ping noises please
set visualbell
set noerrorbells
