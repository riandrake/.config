" IDEAVIMRC
" https://github.com/JetBrains/ideavim

" Plugins supported by IdeaVim
" https://github.com/JetBrains/ideavim/wiki/Emulated-plugins
set surround
set multiple-cursors
set commentary
set ReplaceWithRegister
set argtextobj
set exchange
set textobj-entire
set ideajoin
set NERDTree

" https://github-wiki-see.page/m/JetBrains/ideavim/wiki/Select-mode
set idearefactormode=keep

" Apply settings I use in every vim configuration
so ~/vimfiles/common.vim

" IDE Actions
" :actionlist
" :actionlist xyz
"
nnoremap <leader>r :action ReformatCode<cr>
nnoremap <leader>g :action GotoDeclaration<cr>
nnoremap <leader>p :action QuickImplementations<cr>
nnoremap <leader>d :action ToggleDistractionFreeMode<cr>
nnoremap <leader>7 :action BuildStartupProject<cr>
nnoremap <leader>5 :action Debug<cr>

" Quick newline
inoremap <C-j> <cr>

" Switch brackets on/off around one-line if-statements
nnoremap <leader>b O{<esc>jo<c-d>}<esc>
nnoremap <leader>B kddjdd

" Toggle focus to the Explorer tab
map <C-t> :NERDTreeToggle<CR>
" Navigate to current file in the Explorer tab
map <C-S-t> :NERDTreeFind<CR>
