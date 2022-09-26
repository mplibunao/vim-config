
" Copilot
" Cycle through suggestions
imap <C-]> <Plug>(copilot-next)
imap <C-[> <Plug>(copilot-previous)
" Disable tab so it doesn't conflict with completion/snippets
" Yeah, it's annoying to deviate from vscode defaults but pressing tab
" while hovering on a tsc suggestion gives something different
imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
imap <C-`> <Plug>(copilot-dismiss)

let g:copilot_node_command = "/Users/mp/Library/pnpm/nodejs/16.17.0/bin/node"
