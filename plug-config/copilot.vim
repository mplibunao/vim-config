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
"let g:copilot_node_command = "/Users/mp/Library/pnpm/nodejs/18.20.3/bin/node"

"i  <Plug>(copilot-accept-line) & copilot#AcceptLine()
"i  <Plug>(copilot-accept-word) & copilot#AcceptWord()
"i  <Plug>(copilot-suggest)   <Cmd>call copilot#Suggest()<CR>
"i  <Plug>(copilot-previous)   <Cmd>call copilot#Previous()<CR>
"i  <Plug>(copilot-next)   <Cmd>call copilot#Next()<CR>
"i  <Plug>(copilot-dismiss)   <Cmd>call copilot#Dismiss()<CR>


" Ensure escape key functionality
inoremap <Esc> <Esc>
