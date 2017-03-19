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


function! s:toggle_highlight()
  if exists('b:last_hlsearch')
    let &l:hlsearch = b:last_hlsearch
    unlet b:last_hlsearch
  elseif &l:hlsearch
    let b:last_hlsearch = &l:hlsearch
    setlocal nohlsearch
  endif
endfunction

augroup vimrc_search
  autocmd!
  autocmd InsertEnter * call s:toggle_highlight()
  autocmd InsertLeave * call s:toggle_highlight()
augroup END


"-- Lightline buffer integration --"
"function! MyBufferline()
"  call bufferline#refresh_status()
"  let buffers = [
"    \   g:bufferline_status_info.before,
"    \   g:bufferline_status_info.current,
"    \   g:bufferline_status_info.after
"    \ ]
"  " remove the annoying whitespaces to make the tabline consistent
"  call map(buffers, 's:strip(v:val)')
"  return buffers
"endfunction
