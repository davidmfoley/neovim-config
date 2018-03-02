set nocompatible
filetype off

" Let <Tab> also do completion
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
call plug#begin('~/.config/nvim/plugged')

Plug 'kien/ctrlp.vim'
"Plug 'Shougo/neosnippet'
Plug 'SirVer/ultisnips'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'steelsojka/deoplete-flow'
" causes deoplete list to fuck up
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'wavded/vim-stylus'
Plug 'benekastah/neomake'
" Plug 'flowtype/vim-flow'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set ruler
syntax on
set encoding=utf-8

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

let $JS_CMD='node'
" autocmd BufWritePost *.js Neomake
" let g:airline_theme='distinguished'
let g:airline_powerline_fonts=1


set wildignore+=*.class,.git,*.jar,tmp,.DS_Store,.jhw-cache,node_modules
" let g:CommandTMaxHeight=20

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" deoplete
let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<C-j>"
"call deoplete#enable()
"call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
"
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

" Enable syntax checking
" let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
" let g:neomake_javascript_enabled_makers = ['flow']
" let g:flow#flowpath = './node_modules/.bin/flow'

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

"let g:UltiSnipsExpandTrigger="<C-j>"

"set omnifunc=syntaxcomplete#Complete

" JSX in JS files
let g:jsx_ext_required = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" resize the window with the arrow keys
map <Up> <c-w>-
map <Down> <c-w>+
map <Left> <c-w><
map <Right> <c-w>>

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set nofoldenable
let mapleader = ","

" make uses real tabs
au FileType make set noexpandtab

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=Blue guibg=Blue
autocmd! BufWritePost * Neomake

" source ~/.vim/color_settings.vim

" source ~/.vim/clojure_settings.vim

set vb

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

map <leader>d :NERDTreeFind<CR>
map <leader>D :execute 'NERDTreeToggle ' . getcwd()<CR>
"let NERDTreeShowHidden=1

function! FormatDocument()
  exec 'mzggVG=`z'
endfunction

"source ~/.vim/alternate.vim
"source ~/.vim/ruby_helpers.vim
"source ~/.vim/coffee_helpers.vim
source ~/.config/nvim/clipboard.vim

" toggle line numbers, wrapping, etc.
map <leader>tn :set invnumber<CR>
map <leader>tw :set nowrap!<CR>

" let g:ctrlp_custom_ignore = '\.*\|'
let g:ctrlp_working_path_mode = 0

function! Fuzzball(path)
  " call CommandTFlush
  " exec ":CommandT " . a:path
  exec ":CtrlP " . a:path
endfunction

map <leader>gX :ClearCtrlPCache<cr>
map <leader>gb :CtrlPBuffer<cr>
map <leader>gu :CtrlPMRU<cr>

" Command-T 'go to' (inspired by GRB)
map <leader>gJ :call Fuzzball('spec/javascripts')<cr>
map <leader>gr :call Fuzzball('')<cr>

" Format all
map <leader>fa mzggVG=`z
" Format whitespace
map <leader>fw :call setreg('*', line('.'))<cr>:call setreg('c',col('.'))<cr>:exec ":retab"<cr>:exec ":%s/ \\+$//"<cr>:exec ":" . getreg('*')<cr>

map <leader>fr :call ReekFile() %<cr>
map <leader>fl :!flog %<cr>

" navigate through error list
"
map <leader>cc :cc<CR>
map <leader>cn :cn<CR>
map <leader>cp :cp<CR>

" let g:neomake_open_list = 2

" next/prev location (lint, etc.)
map <leader>ln :lnext<cr>
map <leader>lp :lprevious<cr>

" lint all
map <leader>la :Neomake!<CR>

map <C-J> :cn<CR>
map <C-K> :cp<CR>

set textwidth=0

"function! SuperCleverTab()
"  let line = getline('.')
"  let has_slash = match(line, '\/') != -1       " position of slash, if any
"  if strpart(line, 0, col('.') - 1) =~ '^\s*$'
"    return "\<Tab>"
"	elseif ( has_slash )
"    return "\<C-X>\<C-F>"
"	else
"    return "\<C-N>"
"  endif
"endfunction

function! SuperCleverTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<Tab>"
  else
    "return "\<C-N>"
  endif
endfunction

"imap <Tab> <C-R>=SuperCleverTab()<cr>
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ,k = ack for word under cursor
nmap <leader>k :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ag "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
vmap <leader>k y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ag "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" send to tmux
" vmap <leader>ee "ry :call Send_to_Tmux(@r)<CR>
" nmap <leader>ee vip<,e>

" change tmux pane settings
" nmap <leader>es :call Tmux_Vars()<CR>
colorscheme davenight

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
let g:eslint_path = StrTrim(system('PATH=$(npm bin):$PATH && which eslint'))
"let g:neomake_javascript_flow_maker = {
" \ 'exe': 'sh',
" \ 'args': ['-c', g:flow_path . ' --json 2> /dev/null | flow-vim-quickfix'],
" \ 'errorformat': '%E%f:%l:%c\,%n: %m',
" \ 'cwd': '%:p:h'
" \ }


let g:neomake_flow_maker = {
        \ 'exe': g:flow_path,
        \ 'args': ['--from=vim', '--show-all-errors'],
        \ 'errorformat': '%EFile "%f"\, line %l\, characters %c-%m,%C%m,%Z%m',
        \ 'postprocess': function('neomake#makers#ft#javascript#FlowProcess')
        \ }

let g:neomake_eslint_maker = {
       \ 'exe': g:eslint_path,
       \ 'args': ["%", '-f', 'compact'],
       \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
       \ '%W%f: line %l\, col %c\, Warning - %m'
       \ }

" let customFTSettings = ['js']
" Run neomake for all file types except those in customFTSettings (eg. JS)
" autocmd BufWritePre * if index(customFTSettings, &ft) < 0 | Neomake
" Run neomake! for JS files
" autocmd! BufWritePost *.js Neomake! flow eslint

let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint']

noremap <leader>ml :Neomake eslint<CR>
noremap <leader>mf :Neomake! flow<CR>

let g:neomake_open_list=2
inoremap jj <Esc>


