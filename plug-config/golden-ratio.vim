let g:loaded_golden_ratio = 1
" disable autocommands for golden-ratio
let g:golden_ratio_autocommand = 1
"'wrap' is modified whenever golden-ratio is applied. It's restored to its
"user-set value on the focused window and set to golden_ratio_wrap_ignored in
let g:golden_ratio_wrap_ignored = 1
"Use this option to keep all windows that have 'nomodifiable' option set
let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "rnvimr", "vim-which-key"]
