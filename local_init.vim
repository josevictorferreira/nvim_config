let mapleader = "\<Space>"

nnoremap <silent> <A-l> :bn<CR>
nnoremap <silent> <A-h> :bp<CR>
nnoremap <silent><leader>c :bd<CR>
nnoremap <silent><leader>; $a;<esc>
nnoremap <silent><leader>rvi :source ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>evi :e ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>lvi :e ~/.config/nvim/local_init.vim<CR>
nnoremap <silent><leader>todo :e ~/Documentos/todo.wiki<CR>
nnoremap <silent><leader>, :noh<CR>
nnoremap <silent><leader>p :Files<CR>

nnoremap <silent><leader>cl iconsole.log()<esc>i
nnoremap <silent><leader>vd ivar_dump();<esc>hi
nnoremap <silent><leader>php i<?php  ?><esc>hhi
