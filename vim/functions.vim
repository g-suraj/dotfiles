set autoread
"-- Neomake --"
" autocmd! BufWritePost *.cpp Neomake!
" autocmd! BufWritePost *.c Neomake!
" autocmd! BufWritePost *.js Neomake!

"-- Lightline Git Integration --"
function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

"-- Various lightline functions --"
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"-- Lightline Nerdtree integration --"
function! MyLightLinePercent()
  if &ft !=? 'nerdtree'
    return line('.') * 100 / line('$') . '%'
  else
    return ''
  endif
endfunction
function! MyLightLineLineInfo()
  if &ft !=? 'nerdtree'
    return line('.').':'. col('.')
  else
    return ''
  endif
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

" Ale Linting
autocmd! BufWritePost *.js silent !standard --fix %

" JS beautify for HTML/CSS
autocmd! BufWritePost *.html silent !js-beautify --html -r %
autocmd! BufWritePost *.css silent !js-beautify -s 2 --css -r %
autocmd! BufWritePost *.scss silent !js-beautify -s 2 --css -r %
