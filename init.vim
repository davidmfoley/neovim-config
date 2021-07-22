set nocompatible
filetype off

source ~/.config/nvim/plugs.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/javascript.vim
source ~/.config/nvim/python.vim
source ~/.config/nvim/typescript.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/clipboard.vim
source ~/.config/nvim/fzf.vim

let loaded_netrwPlugin=1

if exists('g:plugs["deoplete"]')
  call deoplete#enable()
endif

filetype plugin indent on
filetype plugin on


"set omnifunc=syntaxcomplete#Complete

" MacVIM shift+arrow-keys behavior (required in .vimrc)


" make uses real tabs
au FileType make set noexpandtab

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set textwidth=0

" Close the documentation window when completion is done

colorscheme davenight

" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=Blue guibg=Blue

"inoremap jj <Esc>

set keywordprg=:call\ CocActionAsync('doHover')

