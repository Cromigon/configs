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

" Ugly hack for virtualenvs
let g:python_version = matchstr(system("python --version | cut -f2 -d' '"), '^[0-9]')
if g:python_version =~ 3
    let g:python2_host_prog = "/usr/local/bin/python2"
else
    let g:python3_host_prog = "/usr/local/bin/python3"
endif
