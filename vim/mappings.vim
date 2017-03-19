"-- Pleb mode deactivated --"
no <Down> <Nop>
no <Up> <Nop>
no <Left> <Nop>
no <Right> <Nop>
ino <Down> <Nop>
ino <Up> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>
vno <Down> <Nop>
vno <Up> <Nop>
vno <Left> <Nop>
vno <Right> <Nop>

"-- Basic sanity checks --"
imap jk <Esc>
imap Jk <Esc>
imap JK <Esc>

"-- Easy commenting --"
imap <C-c> /**/jkhha
autocmd FileType vim     imap <silent> <buffer> <C-c> "--  --"jkhhhi
autocmd FileType haskell imap <silent> <buffer> <C-c> --jka

"-- For mitigating common ex command mistakes --"
command! W w
command! Wq wq
command! WQ wq
command! Q q

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
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
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
" Applying clang formatter to only C family files with the command
" ->       nmap <C-f> :ClangFormat<CR>
autocmd FileType cpp nmap <silent> <buffer> <C-f> :ClangFormat<CR>
autocmd FileType c   nmap <silent> <buffer> <C-f> :ClangFormat<CR>

"-- Jumping to alternate file --"
nmap <silent>Gf :A<CR>

"-- Folds --"
nnoremap <Space> za

"-- Toggle FZF and NerdTree --"
nnoremap <C-P> :FZF<CR>
map <C-n> :NERDTreeToggle<CR>

"-- Git Wrapper --"
nnoremap <S-g>s :Gstatus<CR>
nnoremap <S-g>a :Gwrite<CR>
nnoremap <S-g>c :GCommit<CR>
nnoremap <S-g>cs :Commits<CR>

"-- Tagbar --"
"nmap <silent> <C-S-B> :TagbarToggle<CR>

"-- Tex file cleaner --"
autocmd! BufWritePost *.tex :normal mzgg=G`z


"-- Don't tread on me CIA, but hey this is pretty handy --"
cmap w!! w !sudo tee % > /dev/null
