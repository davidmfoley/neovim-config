call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'

" Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
let g:ale_javascript_eslint_suppress_missing_config = 1

let g:typescript_indent_disable = 1

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
let NERDTreeRespectWildIgnore=1

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'ap/vim-css-color'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" let g:airline#extensions#ale#enabled = 1
" let g:airline_theme='distinguished'
" let g:airline_powerline_fonts=1

call plug#end()

" causes deoplete list to fuck up
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'mileszs/ack.vim'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'octref/RootIgnore'
" Plug 'vim-syntastic/syntastic'
"Plug 'mxw/vim-jsx'
" Plug 'wavded/vim-stylus'
" Plug 'benekastah/neomake'
" Plug 'flowtype/vim-flow'
"
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'Quramy/tsuquyomi'
"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"Plug 'HerringtonDarkholme/yats.vim'
 " For async completion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
"
" tern

"Plug 'pangloss/vim-javascript'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'leafgarland/typescript-vim'

" Enable syntax checking
" let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
" let g:neomake_javascript_enabled_makers = ['flow']
" let g:flow#flowpath = './node_modules/.bin/flow'

" load the plugin and indent settings for the detected filetype
" let NERDTreeShowIgnoredStatus=1


" ========== ALE
"let g:ale_linters = {
"\   'javascript': ['eslint', 'flow'],
"\}

" let g:CommandTMaxHeight=20

" deoplete
"let g:deoplete#enable_at_startup = 1
"let g:UltiSnipsExpandTrigger="<C-j>"
