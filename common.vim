" Common settings I use across all configurations (vim, gvim, neovim, ideavim etc)

" press escape to clear search highlight
nnoremap <esc> :noh<return><esc>

" Preferred colorscheme
color onedark

" Never wrap text
set nowrap

" Use the system clipboard as the default register
set clipboard=unnamed

" Tab settings
set tabstop=4
set shiftwidth=4

" Search behaviour (/)
set hlsearch
set incsearch
" set ignorecase <- I didn't like these two options after all (20/01/22)
" set smartcase

" Auto-indent tabs when adding new lines
set autoindent
set smartindent

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

" Comment line
nmap <c-c> gcil
vmap <c-c> gc

" Custom commenting via tpope/commentary plugin
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s

" No ping noises please
set visualbell
set noerrorbells
set belloff=all
