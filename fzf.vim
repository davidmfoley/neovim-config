" Fzf

let $FZF_DEFAULT_OPTS = '--bind ctrl-space:select-all --exact'

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
command! -bang -nargs=* Rg call fzf#vim#grep(
  \ 'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>),
  \ 1, 
  \ fzf#vim#with_preview({'options': ['-m', '--bind=ctrl-a:select-all,ctrl-d:deselect-all,ctrl-space:toggle']} ),
  \ <bang>0)
command! -bang -nargs=* FilenameSearch call fzf#vim#gitfiles(
  \ <q-args>, 
  \ fzf#vim#with_preview(
    \ <q-args> == "?" ? 
      \ { "placeholder": "", 'options': ['-m', '--bind=ctrl-a:select-all,ctrl-d:deselect-all,ctrl-space:toggle']} :
      \ {'options': ['-m', '--bind=ctrl-a:select-all,ctrl-d:deselect-all,ctrl-space:toggle']}
    \ ), <bang>0)

let g:fzf_layout = { 'down': '40%' }

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
