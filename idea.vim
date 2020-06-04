set easymotion
set surround
set multiple-cursors
set commentary
set ReplaceWithRegister
set argtextobj
set textobj-entire
so ~/vimfiles/common.vim

nnoremap <leader>r :action ReformatCode<cr>
nnoremap <leader>g :action GotoImplementation<cr>
nnoremap <leader>p :action QuickImplementations<cr>
nnoremap <leader>d :action QuickJavaDoc<cr>
