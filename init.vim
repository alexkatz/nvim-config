" all plugins 
source $HOME/.config/nvim/vim-plug/plugins.vim

" common config
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/keys/leader.vim 

if exists('g:vscode')
  " vscode config 
  source $HOME/.config/nvim/keys/vscode/comments.vim
  source $HOME/.config/nvim/keys/vscode/exit-search.vim
  source $HOME/.config/nvim/keys/vscode/navigation.vim
  source $HOME/.config/nvim/general/vscode-settings.vim
else 
  " nvim config
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/coc-global-extensions.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/airline.vim
  source $HOME/.config/nvim/plug-config/indent-line.vim
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/keys/mappings.vim
endif

