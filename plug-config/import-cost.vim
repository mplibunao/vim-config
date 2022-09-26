
" Getting an error when .ts is included in autocmd

augroup import_cost_auto_run
  autocmd!
  autocmd InsertLeave *.js,*.jsx,*.tsx ImportCost
  autocmd BufEnter *.js,*.jsx,*.tsx ImportCost
  autocmd CursorHold *.js,*.jsx,*.tsx ImportCost
augroup END
