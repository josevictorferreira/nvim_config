" Mapping the leader key
let mapleader = "\<Space>"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $TERM="screen-256color"
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" Vim airline configs
let g:airline_powerline_fonts = 1
let g:airline_theme='onehalfdark'

set diffopt+=vertical

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
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set background=light
colorscheme onehalfdark

" Syntastic configs
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

" Mapping the buffer move with Alt-h and l
nnoremap <silent> <S-l> :bn<CR>
nnoremap <silent> <S-h> :bp<CR>
nnoremap <silent><leader>c :bd<CR>
nnoremap <silent><leader>; $a;<esc>
nnoremap <silent><leader>rvi :source ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>evi :e ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>ephp :e ~/.config/nvim/snippets/php.snippet
nnoremap <silent><leader>lvi :e ~/.config/nvim/local_init.vim<CR>
nnoremap <silent><leader>llvi :e ~/.config/nvim/local_bundles.vim<CR>
nnoremap <silent><leader>todo :e ~/Documentos/todo.wiki<CR>
nnoremap <silent><leader>dt :DockerToolsOpen<CR>
nnoremap <silent><leader>, :noh<CR>
nnoremap <silent><leader>p :Files<CR>
nnoremap <silent><leader>f :Rgrep<CR>
nnoremap <silent><leader>/ 0ei//<esc>
nnoremap <silent><leader>3 :NERDTreeToggle<CR>
nnoremap <silent><leader>rb :! ruby %<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent><leader>dos :ed ++ff=dos %<CR>

" Fix bug between the multiple cursors plugins and deoplete
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction
function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

let g:syntastic_haml_checkers = ['haml_lint']

" Fix bug with xml end tag colors
highlight link xmlEndTag xmlTag

let g:closetag_html_style=1

set linespace=3

let g:syntastic_php_phpcs_args='--standard=~/.composer/vendor/magento-ecg/coding-standard/Ecg'
