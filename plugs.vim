call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-fugitive'

let g:typescript_indent_disable = 1

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
let NERDTreeRespectWildIgnore=1

Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'ap/vim-css-color'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

