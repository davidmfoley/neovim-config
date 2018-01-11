" ,s -> System clipboard

"cut
nmap <leader>sx "+dd
vmap <leader>sx "+d

"copy
nmap <leader>sc "+yy
vmap <leader>sc "+y

"paste
nmap <leader>sv "+p
vmap <leader>sv d"+P

"swap default register and system clipbaord
map <leader>ss :let @x=@"<cr>:let @"=@+<cr>:let @+=@x<cr>:echom "clipboard, default registers swapped"<cr>

