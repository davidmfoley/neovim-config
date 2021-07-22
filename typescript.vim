

function! TSInclude(fname)

  if filereadable(a:fname . ".ts")
    return  a:fname . ".ts"
  endif

  if filereadable(a:fname . ".tsx")
    return  a:fname . ".tsx"
  endif

  if filereadable(a:fname . ".js")
    return  a:fname . ".js"
  endif

  if filereadable(a:fname . "/index.ts")
    return  a:fname . "/index.ts"
  endif

  if filereadable(a:fname . "/index.tsx")
    return  a:fname . "/index.tsx"
  endif

  if filereadable(a:fname . "/index.js")
    return  a:fname . "/index.js"
  endif

endfunction

function! GetImportedFilePath()
  let save_cursor = getcurpos()
  let save_a = @a
  normal! 0
  if !search("['\"]", "", line('.'))
    return ''
  endif

  let quote = strpart(getline('.'), col('.') - 1, 1)
  execute 'normal! "ayi'.quote
  let result = @a
  let @a = save_a
  call setpos('.', save_cursor)
  return result
endfunction

function! TSGoToImport()
  let pathname = GetImportedFilePath()

  "echom "pathname ". pathname
  " no path to follow found
  if empty(pathname)
    " fallback to default behaviour
    normal! gf
    return
  endif

  let currentpath = expand('%:h')
  "echom "currentpath ". currentpath
  let catted = currentpath . '/' . pathname
  "echom "catted ". catted

  let dest = TSInclude(catted)

  "echom "dest ". dest

  if empty(dest)
    " fallback to default behaviour
    normal! gf
    return
  endif

  let fullpath = simplify(dest)
  "echom "fullpath ". fullpath

  if bufexists(fullpath)
    execute "buffer ".fullpath
    return
  endif

  execute "edit ".fullpath
endfunction
