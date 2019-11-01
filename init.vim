if has('vim_starting')
  set nocompatible               " Be iMproved
endif
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))
source ~/.config/nvim/plugins.vim
call plug#end()

" Custom Functions
source ~/.config/nvim/functions.vim
" Custom Settings
source ~/.config/nvim/settings.vim
" Mappings
source ~/.config/nvim/mappings.vim
" Abbreviations
source ~/.config/nvim/abbreviations.vim
