" Vim wiki files
Plug 'vimwiki/vimwiki'

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" Dracula colorscheme
Plug 'dracula/vim'

" Solarized colorschemes
Plug 'altercation/vim-colors-solarized'

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
