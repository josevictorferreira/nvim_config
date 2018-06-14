" Mapping the leader key
let mapleader = "\<Space>"

" Vim airline configs
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_spacemacs'

" Relative numbers
set relativenumber
" Cursor orientation settings
set cursorcolumn
set cursorline

" Fix lagged scrolling
set ttyfast
set lazyredraw

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Theming settings
if has("termguicolors")
    set termguicolors
endif
set background=dark
colorscheme base16-tomorrow-night

" Mapping the buffer move with Alt-h and l
nnoremap <silent> <A-l> :bn<CR>
nnoremap <silent> <A-h> :bp<CR>
nnoremap <silent><leader>c :bd<CR>
nnoremap <silent><leader>; $a;<esc>
nnoremap <silent><leader>rvi :source ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>evi :e ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>ephp :e ~/.config/nvim/snippets/php.snippet
nnoremap <silent><leader>lvi :e ~/.config/nvim/local_init.vim<CR>
nnoremap <silent><leader>llvi :e ~/.config/nvim/local_bundles.vim<CR>
nnoremap <silent><leader>todo :e ~/Documentos/todo.wiki<CR>
nnoremap <silent><leader>, :noh<CR>
nnoremap <silent><leader>p :Files<CR>
nnoremap <silent><leader>f :Rgrep<CR>
nnoremap <silent><leader>/ 0ei//<esc>

tnoremap <Esc> <C-\><C-n>

" Fix bug between the multiple cursors plugins and deoplete
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction
function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

" Fix bug with xml end tag colors
highlight link xmlEndTag xmlTag

let g:closetag_html_style=1
