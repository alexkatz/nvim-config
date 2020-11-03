lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" syntax enable
" colorscheme nvcode

" hi Comment cterm=italic
" let g:nvcode_hide_endofbuffer=1
" let g:nvcode_terminal_italics=1
" let g:nvcode_termcolors=256

