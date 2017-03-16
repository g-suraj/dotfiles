"-- Neomake --"
autocmd! BufWritePost *.cpp Neomake!
autocmd! BufWritePost *.c Neomake!

"-- Lightline Git Integration --"
function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

"-- DeopleteMe additional --"
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

"-- Prolog file type association --"
au BufNewFile,BufRead *.pro set filetype=prolog
au BufNewFile,BufRead *.pl  set filetype=prolog

"-- Vim spell checker in tex files --"
au BufNewFile,BufRead *.tex set spell spelllang=en_gb

"-- Strip whitespace characters on write --"
autocmd BufWritePre * :%s/\s\+$//e

