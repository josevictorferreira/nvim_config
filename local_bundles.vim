" Vim wiki files
Plug 'vimwiki/vimwiki'

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" Nerd commenter plugin
Plug 'scrooloose/nerdcommenter'

" Multiple Cursors Support
Plug 'terryma/vim-multiple-cursors'

" Install deoplete, autocomplete solution
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue']}

" Plugin for javascript
Plug 'pangloss/vim-javascript'

Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }

Plug 'docunext/closetag.vim'

Plug 'valloric/matchtagalways'

Plug 'dyng/ctrlsf.vim'

Plug 'tpope/vim-endwise'

Plug 'christoomey/vim-tmux-navigator'

Plug 'phanviet/vim-monokai-pro'

Plug 'liuchengxu/vim-which-key'

Plug 'w0rp/ale'

Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'ryanoasis/vim-devicons'
Plug 'ryanoasis/vim-webdevicons'
