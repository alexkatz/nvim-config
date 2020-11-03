" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tpope/vim-surround' " support for surrounding/wrapping characters
Plug 'unblevable/quick-scope' " character highlighting for horizontal nav
Plug 'machakann/vim-highlightedyank'

if exists('g:vscode') " plugins for nvim use within vscode
  Plug 'asvetliakov/vim-easymotion', { 'as': 'vscode-easymotion' }
else " plugins exlusively used outside of vscode
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
  Plug 'junegunn/fzf.vim' " FZF 
  Plug 'easymotion/vim-easymotion'
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc for web dev 
  Plug 'kevinoid/vim-jsonc' " jsonc support
  Plug 'christianchiarulli/nvcode.vim' " color theme similar to vscode
  Plug 'gruvbox-community/gruvbox' " gruvbox, baby
  Plug 'nvim-treesitter/nvim-treesitter' " syntax highlighting
  Plug 'vim-airline/vim-airline' " tabs, buffers, status bar
  Plug 'jiangmiao/auto-pairs' " completes pairs of opening/closing characters
  Plug 'Yggdroot/indentLine' " visualizes indentation 
  Plug 'tpope/vim-commentary' " commenting operators
endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
