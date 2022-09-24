let mapleader = "¿" " map leader to comma

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
"nnoremap <A-h> <C-W>H
"nnoremap <A-j> <C-W>J
"nnoremap <A-k> <C-W>K
"nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard by pressing yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" F6 or leader+n+n to open NERDTree
nmap <F6> :NERDTreeToggle<CR>
map <leader>nn :NERDTreeToggle<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use 'ctrl - j' and 'ctrl - k' to navigate diagnostics
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)

" symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" :noh with leader + h
map <leader>h :noh<CR>

" toggle line number mode with leader+r+r
function! ToggleLineNumber()
    set norelativenumber!
endfunction
map <leader>rr :call ToggleLineNumber()<CR>

" use <C-Tab> to trigger completion
inoremap <silent><expr> <C-Tab> coc#pum#confirm() 

" use <F4> to toggle spell checking
nnoremap <silent> <F4> :set spell!<CR>
inoremap <silent> <F4> :set spell!<CR>

" use <leader>p to paste without losing the register
xnoremap <silent> <leader>p "_dP

" search with spacebar
nnoremap <silent> <Space> /


