Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/grep.vim'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'vimwiki/vimwiki'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'docunext/closetag.vim'
Plug 'valloric/matchtagalways'
Plug 'tpope/vim-endwise'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-webdevicons'
Plug 'kevinhui/vim-docker-tools'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-surround'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
if v:version >= 703
  Plug 'Shougo/vimshell.vim'
endif
if v:version >= 704
  "" Snippets
  Plug 'SirVer/ultisnips'
endif
" C
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'
" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'
" elm
"" Elm Bundle
Plug 'elmcast/elm-vim'
" erlang
Plug 'jimenezrick/vimerl'
" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
" haskell
"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'
" html
"" HTML Bundle
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
" lisp
"" Lisp Bundle
Plug 'vim-scripts/slimv.vim'
" lua
"" Lua Bundle
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-lua-inspect'
" php
"" PHP Bundle
Plug 'arnaud-lb/vim-php-namespace'
" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
" rust
" Vim racer
Plug 'racer-rust/vim-racer'
" scala
if has('python')
    " sbt-vim
    Plug 'ktvoelker/sbt-vim'
endif
" vim-scala
Plug 'derekwyatt/vim-scala'
" COC.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Ale for auto formatting files
Plug 'w0rp/ale'
" Plugin for hex colors
Plug 'rrethy/vim-hexokinase'
