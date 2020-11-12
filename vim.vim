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

" Fonts
Plug 'powerline/fonts'

Plug 'terryma/vim-multiple-cursors'

" Status line
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 0

" Distraction free
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

Plug 'kshenoy/vim-signature'

" Surround motion
Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'

" Repeatable plugins
Plug 'tpope/vim-repeat'

" Comment motion
Plug 'tpope/vim-commentary'

" Replace with Register
Plug 'vim-scripts/ReplaceWithRegister'

" Sorting motion
Plug 'christoomey/vim-sort-motion'

" Async Run
Plug 'skywind3000/asyncrun.vim'
let g:asyncrun_open = 15

" Entire document as a text object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'

" Indents as a text object
Plug 'michaeljsmith/vim-indent-object'

call plug#end()              " required
filetype plugin indent on    " required

"========== [Keymap_Settings] =========="


" Quick save/quit
nnoremap <leader>e :MayaScriptEditorSend<cr>
nnoremap <leader>r :MayaScriptEditorClear<cr>

" Comment line
nmap <C-c> gcil
vmap <C-c> gc

nnoremap <silent> <a-/> :s/\\/\//g<cr>
nnoremap <silent> <a-\> :s/\//\\/g<cr>
vnoremap <silent> <a-/> :s/\\/\//g<cr>gv
vnoremap <silent> <a-\> :s/\//\\/g<cr>gv

nnoremap <F7> :call <SID>compile_and_run()<CR>
nnoremap <S-F7> :AsyncStop<Enter>
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

" Clear search highlight with escape
nnoremap <esc> :noh<return><esc>

" Buffer navigation
nnoremap <silent> <a-h> :bprevious<CR>
nnoremap <silent> <a-l> :bnext<CR>

" Netrw mapping
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Add your own mapping. For example:
noremap <silent> <C-n> :call ToggleNetrw()<CR>

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Open explorer here
nnoremap <F1> :!start explorer.exe .<CR>

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
let &guifont="JetBrainsMono_Nerd_Font_Mono:h10"

" Show current command.
set showcmd 

" TAB completed menus
set wildmenu
set wildmode=full

" Syntax highlighting
syntax enable

" No wrapped text
set nowrap

" Explore settings
"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

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
autocmd FileType act setlocal commentstring=//\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s

if has("gui_running")
	:so $HOME/vimfiles/gvim.vim
else
	:so $HOME/vimfiles/tvim.vim
endif

:so $HOME/vimfiles/common.vim
