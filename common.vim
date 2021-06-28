" when using any vim exe or emulator

" press escape to clear search highlight
nnoremap <esc> :noh<return><esc>

" system clipboard
set clipboard=unnamed

" search options
set hlsearch
set incsearch
set smartcase

" nice scrolling
set scrolloff=5

" display cursor line
set cursorline

" leader key
let mapleader=" "
nnoremap <space> <nop>

" mark key remap
nnoremap ' `
nnoremap ` '
onoremap ' `
onoremap ` '

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" moving lines
nnoremap <silent> <a-k> :move-2<cr>
xnoremap <silent> <a-k> :move-2<cr>gv
nnoremap <silent> <a-j> :move+<cr>
xnoremap <silent> <a-j> :move'>+<cr>gv

" split navigation
nnoremap <a-h> <c-w><c-h>
nnoremap <a-j> <c-w><c-j>
nnoremap <a-k> <c-w><c-k>
nnoremap <a-l> <c-w><c-l>

" buffer navigation
nnoremap <silent> <c-h> :bprevious<cr>
nnoremap <silent> <c-l> :bnext<cr>

" No ding please
set visualbell
set noerrorbells
