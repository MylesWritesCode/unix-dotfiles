""" GENERAL SETTINGS """
source ~/.config/nvim/general/settings.vim

""" PLUGINS """
source $HOME/.config/nvim/vim-plug/plugins.vim

""" KEYMAPS """
source $HOME/.config/nvim/mappings/keymaps.vim

""" VSCODE EXTENSIONS """
if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
endif