" Author Niclas Björner <niclas@cromigon.se>

" vim mode, no vi mode
if &compatible
  set nocompatible " Be iMproved
endif

call plug#begin('~/.config/nvim/plugs/')
" My Plugins:
Plug 'morhetz/gruvbox'                                            " Gruvbox theme
Plug 'tpope/vim-surround'                                         " Vim surround, for easier changes of surrounding characters.
Plug 'neomake/neomake'                                            " @xintron made me do it.
Plug 'godlygeek/tabular'                                          " See previous comment.
Plug 'Shougo/unite.vim'                                           " Unite for search and display of sources.
Plug 'airblade/vim-gitgutter'                                     " Git gutter because of GIT
Plug 'vim-airline/vim-airline'                                    " Airline since I love the way it looks
Plug 'Yggdroot/indentLine'                                        " Show where intent lines are
Plug 'stephpy/vim-yaml'                                           " Who doesn't like YAML, amirite?
Plug 'Glench/Vim-Jinja2-Syntax'                                   " Jinja2, because awesome?
Plug 'Matt-Deacalion/vim-systemd-syntax'                          " And I do love me some systemD
Plug 'evanmiller/nginx-vim-syntax'                                " Nginx because reasons
Plug 'tpope/vim-markdown'                                         " And markdown, my true saviour
Plug 'whatyouhide/vim-tmux-syntax'                                " And syntax for tmux files.
Plug 'majutsushi/tagbar'                                          " Tagbar, because it's awesome
Plug 'nathanaelkane/vim-indent-guides'                            " It's a good idea to display identation
Plug 'Shougo/deoplete.nvim'                                       " Deoplete for code completion
Plug 'zchee/deoplete-jedi'                                        " Jedi in deoplete for python completion
Plug 'fatih/vim-go'                                               " Go for vim
Plug 'zchee/deoplete-go', {'do': 'make'}                          " Go deoplete support
Plug 'ervandew/supertab'                                          " Supertab to make tab more powerful
Plug 'tpope/vim-fugitive'                                         " Fugitive is (apparantly) amazing
Plug 'robbles/logstash.vim'                                       " I do like logstash (not)
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'                                    " Dockerfile hilighting
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugs/gocode/nvim/symlink.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                                           " fzf is the future or fuzzy search!
Plug 'lambdatoast/elm.vim'                                        " Elm beacuase frontend
Plug 'kchmck/vim-coffee-script'                                   " Coffeescript because I h8 my life.
Plug 'sjl/gundo.vim'

call plug#end()

filetype plugin indent on

" This will check for custom config files in the configs subfolder.
for f in split(globpath(split(&runtimepath, ',')[0], 'configs/*.vim'), '\n')
    if (f =~ '\v0[0-9].+\.vim')
        exe 'source'.f
    endif
endfor
