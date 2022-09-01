" Only do this when not done yet for this buffer
if exists("b:did_ftplugin_dave")
  finish
endif

let b:did_ftplugin_dave = '1'

" let b:ale_linters = ['eslint', 'tsserver']
" let b:ale_fixers = ['eslint', 'prettier']
" let b:ale_fix_on_save = 1

setlocal suffixesadd=.ts,.tsx

"nmap <buffer> gf :call TSGoToImport()<cr>
"" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <leader>wb :call CocAction('runCommand', 'tsserver.watchBuild')<CR>

set makeprg=yarn\ build
