set splitright " vsplit will open the new split to the right

let g:airline_powerline_fonts = 1 " Tell airline that I use poweline a powerline font
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Allow change of cursor shapes in neovim

" Tab settings
set scrolloff=3
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

" Folding
set foldlevelstart=0

" Cursorline
set cursorline

" Ignore and smart case
set ignorecase
set smartcase

" Wildmenu completion
set wildmenu
set wildmode=list:longest,full
set wildignore+=.git
set wildignore+=*.pyc
set wildignore+=*.DS_Store

" Backup options
set backup
set writebackup
" Set the backup dir to .config/nvim/vimtmp
" So that we won't have $FILE~ all over our FS
set backupdir=~/.config/nvim/vimtmp

set history=500

set undofile
set undolevels=512

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" set completeopt=menuone,noinsert,noselect,longest,preview

" Something Something for gocode
let g:deoplete#sources#go#gocode_binary = '/home/prosten/git/go/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']


" Config for changing cursors in both tmux and ourside (on INSERT MODE)
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Autorun
autocmd CompleteDone * pclose!

