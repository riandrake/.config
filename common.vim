" When using any vim exe or emulator

" Press Escape to clear search highlight
nnoremap <esc> :noh<return><esc>

" System clipboard
set clipboard=unnamed

" Search options
set hlsearch
set incsearch
set smartcase

" Nice scrolling
set scrolloff=5

" Display cursor line
set cursorline

" Leader key
let mapleader=" "
nnoremap <SPACE> <Nop>

" Mark key remap
nnoremap ' `
nnoremap ` '
onoremap ' `
onoremap ` '

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Moving lines
nnoremap <silent> <A-k> :move-2<CR>
xnoremap <silent> <A-k> :move-2<CR>gv
nnoremap <silent> <A-j> :move+<CR>
xnoremap <silent> <A-j> :move'>+<CR>gv
