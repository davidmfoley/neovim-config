"autocmd! BufWritePost * Neomake

" source ~/.vim/neomake.vim
" lint all
" let g:neomake_open_list = 2
" map <leader>la :Neomake!<CR>
"let g:neomake_javascript_flow_maker = {
let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
let g:eslint_path = StrTrim(system('PATH=$(npm bin):$PATH && which eslint'))
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
