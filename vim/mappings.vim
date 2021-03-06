"-- Pleb mode deactivated --" no <Down> <Nop>
no <Up> <Nop>
no <Left> <Nop>
no <Right> <Nop>
ino <Down> <Nop>
ino <Up> <Nop>
ino <Left> <Nop>
vno <Down> <Nop>
vno <Up> <Nop>
vno <Left> <Nop>
vno <Right> <Nop>

"-- Basic sanity checks --"
imap jk <Esc>
imap Jk <Esc>
imap JK <Esc>

"-- Neovim Terminal Bindings (I dont use these) --"
tnoremap jk <C-\><C-n>
tnoremap <C-w> <C-\><C-n>:q<CR>
tnoremap <C-J> <C-\><C-n><C-W><C-J>
tnoremap <C-K> <C-\><C-n><C-W><C-K>
tnoremap <C-L> <C-\><C-n><C-W><C-L>
tnoremap <C-H> <C-\><C-n><C-W><C-H>

"-- VimSplits remappings --"
nnoremap <C-w>ts <C-W>s:te<CR>
nnoremap <C-w>tv <C-W>v:te<CR>
nnoremap <C-S-J> <C-W><C-J>
nnoremap <C-S-K> <C-W><C-K>
nnoremap <C-S-L> <C-W><C-L>
nnoremap <C-S-H> <C-W><C-H>
set splitbelow
set splitright
"--  This disables vim split lines --"
set fillchars=""

"-- Visual Mode and Vim Motion ease of use --"
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

"-- Indentations --"
map <c-S-f> mzgg=G`z
autocmd FileType cpp nmap <silent> <buffer> <C-f> :ClangFormat<CR>
autocmd FileType c   nmap <silent> <buffer> <C-f> :ClangFormat<CR>
autocmd FileType js   nmap <silent> <buffer> <C-f> :!standard --fix %<CR>
autocmd FileType html   nmap <silent> <buffer> <C-f> :silent !js-beautify -s 2 --html -r %<CR><CR>
autocmd FileType css   nmap <silent> <buffer> <C-f> :silent !js-beautify -s 2 --css -r %<CR><CR>

"-- Jumping to alternate file --"
nnoremap <silent>Gf :A<CR>

"-- Toggle FZF and NerdTree --"
nnoremap <C-P> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>

"-- Git Wrapper --"
nnoremap <S-g>s :Gstatus<CR>
nnoremap <S-g>a :Gwrite<CR>
nnoremap <S-g>c :GCommit<CR>
nnoremap <S-g>cs :Commits<CR>

" Buf next
nnoremap <C-b> :bun<CR>

"-- Tex file cleaner --"
" autocmd! BufWritePost *.tex :normal mzgg=G`z

"-- Don't tread on me CIA, but hey this is pretty handy --"
cmap w!! w !sudo tee % > /dev/null

"-- Lightline + Buffer settings --"
set laststatus=2
set showtabline=2

"-- Sayonara for buffer sanity --"
nmap <leader>q :Sayonara!<cr>
nmap <leader>Q :Sayonara<cr>
