" CONTENTS
" 1. [Startup_Settings]
" 2. [Plugin_Settings]
" 3. [Keymap_Settings]
" 4. [GUI_Settings]
" 5. [Function_Settings]

"========== [Startup_Settings] =========="
set nocompatible              " be iMproved, required
filetype plugin off
set encoding=utf-8

let $PYTHONUNBUFFERED=1

set runtimepath+=$HOME/vimfiles/bundle/Vundle.vim
set runtimepath+=$HOME/vimfiles/bundle/

"========== [Plugin_Settings] =========="
call plug#begin('~/vimfiles/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

so ~/vimfiles/common_plugins.vim
call plug#end()              " required
filetype plugin indent on    " required

"========== [Keymap_Settings] =========="

" Comment line
nmap <c-c> gcil
vmap <c-c> gc

nnoremap <c-s-b> :call <SID>compile_and_run()<CR>
nnoremap <c-s-a-b> :AsyncStop<Enter>
nnoremap <f7> :call <SID>compile_and_run()<CR>
nnoremap <s-f7> :AsyncStop<Enter>
nnoremap <f10> :call asyncrun#quickfix_toggle(6)<cr>

" Clear search highlight with escape
nnoremap <esc> :noh<return><esc>

" Open explorer here
nnoremap <f1> :!start explorer.exe .<CR>

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
let &guifont="JetBrains_Mono:h10:cANSI"

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

" Relative line numbers
set number

" Autoreload files
set autoread

" Doesn't work in Visual Studio
" Nicer horizontal scrolling
set sidescrolloff=5

" Set swap file directory
set dir=~/.vimcache

"========== [Function_Settings] =========="
augroup CSettings
    autocmd!
    autocmd FileType c setlocal complete-=i
    autocmd FileType cpp setlocal complete-=i
    autocmd FileType h setlocal complete-=i
augroup END

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'python'
       exec ":AsyncRun -raw python %"
    endif
endfunction

" Custom commenting via tpope/commentary plugin
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s

if has("gui_running")
	:so $HOME/vimfiles/gvim.vim
else
	:so $HOME/vimfiles/tvim.vim
endif

:so $HOME/vimfiles/common.vim
