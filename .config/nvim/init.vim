" Author Niclas Björner <niclas@cromigon.se>

" vim mode, no vi mode
if &compatible
  set nocompatible " Be iMproved
endif

call plug#begin('~/.config/nvim/plugs/')
" My Plugins:
Plug 'morhetz/gruvbox'                      " Gruvbox theme
Plug 'tpope/vim-surround'                   " Vim surround, for easier changes of surrounding characters.
Plug 'scrooloose/syntastic'                 " Syntastic, I do like my linters, and I do love them here.
Plug 'Shougo/unite.vim'                     " Unite for search and display of sources.
"Plug 'airblade/vim-gitgutter'               " Git gutter because of GIT (Disabled until airblade/vim-gitgutter/pull/311 has been merged or airblade/vim-gitgutter/issues/310 has been marked as closed/done)
Plug 'vim-airline/vim-airline'              " Airline since I love the way it looks
Plug 'Yggdroot/indentLine'                  " Show where intent lines are
Plug 'stephpy/vim-yaml'                     " Who doesn't like YAML, amirite?
Plug 'Glench/Vim-Jinja2-Syntax'             " Jinja2, because awesome?
Plug 'Matt-Deacalion/vim-systemd-syntax'    " And I do love me some systemD
Plug 'evanmiller/nginx-vim-syntax'          " Nginx because reasons
Plug 'tpope/vim-markdown'                   " And markdown, my true saviour
Plug 'whatyouhide/vim-tmux-syntax'          " And syntax for tmux files.
Plug 'majutsushi/tagbar'                    " Tagbar, because it's awesome
Plug 'nathanaelkane/vim-indent-guides'      " It's a good idea to display identation
Plug 'Shougo/deoplete.nvim'                 " Deoplete for code completion
Plug 'zchee/deoplete-jedi'                  " Jedi in deoplete for python completion
Plug 'ervandew/supertab'                    " Supertab to make tab more powerful

call plug#end()

filetype plugin indent on

" This will check for custom config files in the configs subfolder.
for f in split(globpath(split(&runtimepath, ',')[0], 'configs/*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor
