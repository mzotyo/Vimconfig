" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------
" Git status window
function! GitStatusWindow()
    execute "G"
    wincmd L
    setlocal winfixwidth
    vertical resize 50
endfun

nnoremap <C-g>                  :call GitStatusWindow()<Enter>

" Changes
nnoremap <Leader>gd             :vert Gdiffsplit<Enter>

" Log
nnoremap <Leader>lg             :GV<Enter>
nnoremap <Leader>lb             :GV HEAD<space>

" Push Pull
nnoremap <Leader>gu             :Git push --set-upstream origin<space>
nnoremap <Leader>gp             :Git push<Enter>
nnoremap <Leader>gf             :Git push -f<Enter>
nnoremap <Leader>gl             :Git pull<Enter>

" Blame
nnoremap <Leader>bl             :Git blame<Enter>

" Checkout
nnoremap <Leader>gc             :Git checkout<space>
nnoremap <Leader>gcb            :Git checkout -b<space>


" Resolve merge conflicts
nnoremap <Leader>gm             :Conflicted<Enter>


" Cherry pick
nnoremap <Leader>gcp            :Git cherry-pick<space>

" Stash
nnoremap <Leader>st             :Git stash -u<Enter>
nnoremap <Leader>sp             :Git stash pop<Enter>
nnoremap <Leader>sa             :Git stash apply<Enter>
nnoremap <Leader>sw             :Git stash show -p<Enter>

" Load this settings
nnoremap <Leader>g              :e ~/.vim/plug-config/keybinding-git.vim<Enter>
