" When using any IdeaVim emulator

" [Plugins]

set surround
set multiple-cursors
set commentary
set ReplaceWithRegister
set argtextobj
set exchange
set textobj-entire
set ideajoin

set idearefactormode=keep

" [Common Settings]
so ~/vimfiles/common.vim


" [Hotkeys]
nnoremap <leader>e :action P4Edit<cr>
nnoremap <leader>r :action ReformatCode<cr>
nnoremap <leader>g :action GotoDeclaration<cr>
nnoremap <leader>p :action QuickImplementations<cr>
nnoremap <leader>d :action ToggleDistractionFreeMode<cr>
nnoremap <leader>7 :action BuildSolutionAction<cr>
nnoremap <leader>5 :action Debug<cr>
nnoremap <leader>w :w<cr>
nnoremap <a-h> :action PreviousTab<cr>
nnoremap <a-l> :action NextTab<cr>
inoremap <c-j> <cr>

nnoremap <leader>th I// TODO:<space>
nnoremap <leader>tl A<space>// TODO:<space>
nnoremap <leader>tj o// TODO:<space>
nnoremap <leader>tk O// TODO:<space>

nnoremap <leader>b O{<esc>jo<c-d>}<esc>
nnoremap <leader>B kddjdd

vnoremap <leader>f C// @formatter:off<cr>// @formatter:on<esc>P

" Enable NERDTree
set NERDTree
" Focus the Explorer tab
map <leader><n> :NERDTreeFocus<CR>
" Open the Explorer tab
map <C-n> :NERDTree<CR>
" Toggle focus to the Explorer tab
map <C-t> :NERDTreeToggle<CR>
" Navigate to current file in the Explorer tab
map <C-f> :NERDTreeFind<CR>

set visualbell
