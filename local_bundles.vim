" Vim wiki files
Plug 'vimwiki/vimwiki'

" Dracula colorscheme
Plug 'dracula/vim'

" Solarized colorschemes
Plug 'altercation/vim-colors-solarized'

" Multiple Cursors Support
Plug 'terryma/vim-multiple-cursors'

" Install deoplete, autocomplete solution
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue']}
