""" PLUGINS BEGIN CALL """
" Plugins will be downloaded under the specified directory.
" For nvim, downloads to data/plugged
call plug#begin('~/.local/share/nvim/plugged')

""" DNU IN VSCODE """
if !exists('g:vscode')
  " Autocompletion (and a bunch of other stuff)
  " Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " Status bar & status bar themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
endif

""" PLUGINS END CALL """
call plug#end()