set ruler
syntax on
set encoding=utf-8

set mouse=a
set bs=2
" set guioptions-=T
" set guioptions-=L
" set guioptions-=r
set showmatch
" set nu
set whichwrap=<,>,h,l,[,]

set wrapmargin=0

" Searching
set hlsearch
set incsearch
set smartcase

set langmenu=none
set nobackup
set nowritebackup
set noswapfile
set hlsearch
set hidden
set tabstop=2
set expandtab
set shiftwidth=2
set exrc
set secure
set nottimeout
set termguicolors
set cursorline

set wildignore+=*.class,.git,*.jar,tmp,.DS_Store,.jhw-cache,node_modules
"
" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set nofoldenable
set vb

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" requires nvim 0.5.0
set signcolumn=number
set number
let mapleader = ","

" Position the (global) quickfix window at the very bottom of the window
" (useful for making sure that it appears underneath splits)
"
" NOTE: Using a check here to make sure that window-specific location-lists
" aren't effected, as they use the same `FileType` as quickfix-lists.
autocmd FileType qf if (getwininfo(win_getid())[0].loclist != 1) | wincmd J | endif
