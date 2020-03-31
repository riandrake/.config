" Press Escape to clear search highlight
nnoremap <esc> :noh<return><esc>

" System clipboard
set clipboard=unnamed

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" Nice scrolling
set scrolloff=5

" Display cursor line
set cursorline

" Moving lines
nnoremap <silent> <A-k> :move-2<CR>
xnoremap <silent> <A-k> :move-2<CR>gv
nnoremap <silent> <A-j> :move+<CR>
xnoremap <silent> <A-j> :move'>+<CR>gv

imap <silent> <c-j> <c-h>
