set splitright " vsplit will open the new split to the right

" Tab settings
set scrolloff=3
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

" Folding
set foldlevelstart=0

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
" Ignore gitcommit
let g:ycm_filetype_blacklist = {
     \ 'gitcommit': 1
     \}

" Autorun
autocmd BufWritePre * :call TrimWhitespace() " Remove any trailing whitespaces

