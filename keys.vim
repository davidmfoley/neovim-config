let macvim_hig_shift_movement = 1

" resize the window with the arrow keys
map <Up> <c-w>-
map <Down> <c-w>+
map <Left> <c-w><
map <Right> <c-w>>

map <leader>d :NERDTreeFind<CR>
map <leader>D :execute 'NERDTreeToggle ' . getcwd()<CR>


" toggle line numbers, wrapping, etc.
map <leader>tn :set invnumber<CR>
map <leader>tw :set nowrap!<CR>

"Searching
map <leader>gr :FilenameSearch<cr>
map <leader>gs :Rg<cr>
map <leader>gg :BCommits<cr>
map <leader>gb :Buffers<cr>
map <leader>gu :CtrlPMRU<cr>

" ,k = ack for word under cursor
nmap <leader>k :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Rg <C-R><C-W><CR><CR>
"nnoremap <leader>k :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Rg <C-R>=escape(@", '\\"#')<CR><CR>
vmap <leader>k y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Rg <C-R>=escape(@", '\\"#')<CR><CR>

" Format all
map <leader>fa mzggVG=`z
" Format whitespace
map <leader>fw :call setreg('*', line('.'))<cr>:call setreg('c',col('.'))<cr>:exec ":retab"<cr>:exec ":%s/ \\+$//"<cr>:exec ":" . getreg('*')<cr>

" navigate through error list
"
map <leader>cc :cc<CR>
map <leader>cn :cn<CR>
map <leader>cp :cp<CR>


" next/prev location (lint, etc.)
map <leader>ln :lnext<cr>
map <leader>lp :lprevious<cr>

map <C-J> coc#float#has_scroll() ? coc#float#scroll(1) : :cn<CR>
map <C-K> coc#float#has_scroll() ? coc#float#scroll(1) : :cp<CR>

" ,hc: show syntax highlight rule for token under cursor 
nnoremap <leader>hc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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
    return "\<C-N>"
  endif
endfunction

function! SuperCleverShiftTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<S-Tab>"
  else
    return "\<C-P>"
  endif
endfunction
imap <Tab> <C-R>=SuperCleverTab()<cr>
imap <S-Tab> <C-R>=SuperCleverShiftTab()<cr>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


"let g:UltiSnipsExpandTrigger="<C-j>"

" COC
nnoremap <leader>ff :CocFix<CR>
