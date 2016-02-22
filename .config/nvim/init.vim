" Author Niclas Björner <niclas@cromigon.se>

" vim mode, no vi mode
if &compatible
  set nocompatible " Be iMproved
endif

call plug#begin()
" My Plugins:
Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'tpope/vim-surround' " Vim surround, for easier changes of surrounding characters.
Plug 'scrooloose/syntastic' " Syntastic, I do like my linters, and I do love them here.
Plug 'Shougo/unite.vim' " Unite for search and display of sources.
Plug 'airblade/vim-gitgutter' " Git gutter because of GIT
Plug 'bling/vim-airline' " Airline since I love the way it looks
Plug 'Yggdroot/indentLine' " Show where intent lines are
Plug 'stephpy/vim-yaml' " Who doesn't like YAML, amirite?
Plug 'Glench/Vim-Jinja2-Syntax' " Jinja2, because awesome?
Plug 'Matt-Deacalion/vim-systemd-syntax' " And I do love me some systemD
Plug 'evanmiller/nginx-vim-syntax' " Nginx because reasons
Plug 'tpope/vim-markdown' " And markdown, my true saviour
Plug 'whatyouhide/vim-tmux-syntax' " And syntax for tmux files.

" YouCompleteMe for completion.
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py' }

call plug#end()

filetype plugin indent on

" This will check for custom config files in the configs subfolder.
for f in split(globpath(split(&runtimepath, ',')[0], 'configs/*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor
