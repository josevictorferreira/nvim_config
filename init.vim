call plug#begin('~/.config/nvim/plugged')
	Plug 'shougo/deoplete.nvim'
	Plug 'scrooloose/nerdtree'
	Plug 'ervandew/supertab'
	Plug 'pangloss/vim-javascript'
	Plug 'mattn/emmet-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'zeis/vim-kolor'
	Plug 'raimondi/delimitmate'
	Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
	Plug 'altercation/vim-colors-solarized'
	Plug 'sheerun/vim-polyglot'
	Plug 'kien/ctrlp.vim'
	Plug 'nikvdp/ejs-syntax'
	Plug 'moll/vim-node'
	Plug 'scrooloose/syntastic'
	Plug 'fishbullet/deoplete-ruby'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-rails'
	Plug 'slim-template/vim-slim'
	Plug 'benekastah/neomake'
  Plug 'tomasr/molokai'
  Plug 'fmoralesc/molokayo'
  Plug 'tpope/vim-endwise'
  Plug 'airblade/vim-gitgutter'
  Plug 'nlknguyen/papercolor-theme'
  Plug 'slashmili/alchemist.vim'
  Plug 'chriskempson/base16-vim'
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set t_Co=256
syntax enable
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set background=dark
color base16-oceanicnext
set cursorline
set linebreak
set list
set fileformat=unix
set ignorecase
set smartcase
set smartindent
set mouse-=a
set fileencodings=utf-8,gbk
set colorcolumn=90
set number
set exrc
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"AutoPairs Config"
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
let base16colorspace=256  " Access colors present in 256 colorspace

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

"Deoplete Configuration"
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#auto_completion_start_length=2

let g:deoplete#sources={}
let g:deoplete#sources._    = ['buffer', 'file', 'ultisnips']
let g:deoplete#sources.ruby = ['buffer', 'member', 'file', 'ultisnips']
let g:deoplete#sources.vim  = ['buffer', 'member', 'file', 'ultisnips']
let g:deoplete#sources.css  = ['buffer', 'member', 'file', 'omni', 'ultisnips']
let g:deoplete#sources.scss = ['buffer', 'member', 'file', 'omni', 'ultisnips']

" Insert <TAB> or select next match
inoremap <silent> <expr> <Tab> utils#tabComplete()

" Manually trigger tag autocomplete
inoremap <silent> <expr> <C-]> utils#manualTagComplete()

" <C-h>, <BS>: close popup and delete previous char
inoremap <expr><C-h> deolete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"

"Vim airline Configuration"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Kolor colorscheme configuration"
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
filetype plugin indent on

"Emmet Configurations"
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,erb EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

"Ternjs config"
"let g:tern_request_timeout = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete"
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

map <C-n> :NERDTreeToggle<CR>


"Mappings for using buffers"
nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"ctrlp map config"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"syntastic config"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

" Disable inherited syntastic
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": [],
  \ "passive_filetypes": [] }

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1
