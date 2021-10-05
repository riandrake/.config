"========== [Plugin_Settings] =========="

call plug#begin('~/.local/share/nvim/plugged')
Plug 'christoomey/vim-sort-motion'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kshenoy/vim-signature'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ngemily/vim-vp4'
Plug 'skywind3000/asyncrun.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'cespare/vim-toml'
Plug 'joshdick/onedark.vim'

let PYTHONUNBUFFERED=1
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='wombat'
let g:asyncrun_open = 15
let g:asyncrun_open = 20
call plug#end()"

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'C:\Program Files (x86)\Python39-32\python.exe'

"========== [Common_Settings] =========="

so ~/.config/common.vim
set fileformats=dos

"========== [Keymap_Settings] =========="

" Comment line
nmap <c-c> gcil
vmap <c-c> gc

"========== [GUI_Settings] =========="

" Disable JSON hiding characters
let g:vim_json_syntax_conceal = 0

" Redraw happens less often, not during macros
set lazyredraw

" Disable annoying beeps
set belloff=all

" Auto-indent tabs when adding new lines
set autoindent
set smartindent

" Font
let &guifont="JetBrains\ Mono:h10:cANSI"

" Show current command.
set showcmd 

" TAB completed menus
set wildmenu
set wildmode=full

" Syntax highlighting
syntax enable

" No wrapped text
set nowrap

" Tab settings
set tabstop=4
set shiftwidth=4

" Increased command history
set history=200

" Autoreload files
set autoread

" Set swap file directory
set dir=~/.vimcache

"========== [Function_Settings] =========="
augroup CSettings
    autocmd!
    autocmd FileType c setlocal complete-=i
    autocmd FileType cpp setlocal complete-=i
    autocmd FileType h setlocal complete-=i
augroup END

" Custom commenting via tpope/commentary plugin
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s

augroup python_file
    autocmd!
    autocmd FileType python nnoremap <c-s-b> :AsyncRun python -u "%"<CR>
augroup END