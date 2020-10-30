" Toggle comment and uncomment in vscode
if exists('g:vscode')
    xmap <C-/> <Plug>VSCodeCommentarygv
    nmap <C-/> <Plug>VSCodeCommentaryLine
endif
