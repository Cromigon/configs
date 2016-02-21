" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles:
NeoBundle 'morhetz/gruvbox' " Gruvbox theme
NeoBundle 'tpope/vim-surround' " Vim surround, for easier changes of surrounding characters.
NeoBundle 'scrooloose/syntastic' " Syntastic, I do like my linters, and I do love them here.
NeoBundle 'Shougo/unite.vim' " Unite for search and display of sources.
NeoBundle 'airblade/vim-gitgutter' " Git gutter because of GIT
NeoBundle 'bling/vim-airline' " Airline since I love the way it looks
NeoBundle 'Yggdroot/indentLine' " Show where intent lines are
NeoBundle 'stephpy/vim-yaml' " Who doesn't like YAML, amirite?
NeoBundle 'Glench/Vim-Jinja2-Syntax' " Jinja2, because awesome?
NeoBundle 'Matt-Deacalion/vim-systemd-syntax' " And I do love me some systemD
NeoBundle 'evanmiller/nginx-vim-syntax' " Nginx because reasons
NeoBundle 'tpope/vim-markdown' " And markdown, my true saviour
NeoBundle 'whatyouhide/vim-tmux-syntax' " And syntax for tmux files.

" YouCompleteMe for completion.
NeoBundle "Valloric/YouCompleteMe", {
    \   "build": {
    \       "unix": "python2 install.py"
    \   }
    \ }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" This will check for custom config files in the configs subfolder.
for f in split(globpath(split(&runtimepath, ',')[1], 'configs/*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor
