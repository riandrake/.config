" When using any IdeaVim emulator

" [Plugins]

" Doesn't appear to do anything
set easymotion


"  cs({  ds(  ys(
set surround

set multiple-cursors

set commentary

set ReplaceWithRegister

set argtextobj

set exchange

set textobj-entire

" [Common Settings]
so ~/vimfiles/common.vim


" [Hotkeys]
nnoremap <leader>r :action ReformatCode<cr>
nnoremap <leader>g :action GotoDeclaration<cr>
nnoremap <leader>p :action QuickImplementations<cr>
nnoremap <leader>d :action QuickJavaDoc<cr>
nnoremap <leader>7 :action BuildSolutionAction<cr>
nnoremap <leader>5 :action Debug<cr>
nnoremap <leader>w :w<cr>
nnoremap <a-h> :action PreviousTab<cr>
nnoremap <a-l> :action NextTab<cr>

inoremap <c-j> <cr>
