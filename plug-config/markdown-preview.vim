" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0


" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

function! g:Open_browser(url)
  let g:open_browser_command = "!google-chrome " . a:url . " &" 
  silent exec g:open_browser_command
  echo g:open_browser_command
endfunction

let g:mkdp_browserfunc = 'g:Open_browser'
