" Toggle git +/- on the side
function! ToggleSignify()
  if exists('g:signify_enabled') && g:signify_enabled
    SignifyDisableAll
    let g:signify_enabled = 0
  else
    SignifyEnableAll
    let g:signify_enabled = 1
  endif
endfunction
