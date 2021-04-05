source $HOME/.config/nvim/modules/plugs.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/nerdtree.vim
source $HOME/.config/nvim/mappings/whichkey.vim
source $HOME/.config/nvim/mappings/keys.vim

colorscheme codedark
set background=dark

" rg make it search from the root directory (think)
if executable('rg')
  let g:rg_derive_root='true'
endif

" ctrl p make it ignore files in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsiz = 25

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Toggle line numbers
function! ChangeLineNumbering()
if &number == 0 && &relativenumber == 0
    setlocal number!
    echo "nu:1/rnu:0"
elseif &number == 1 && &relativenumber == 0
    setlocal relativenumber!
    echo "nu:1/rnu:1"
elseif &number == 1 && &relativenumber == 1
    setlocal number!
    echo "nu:0/rnu:1"
else
    setlocal relativenumber!
    echo "nu:0/rnu:0"
endif
endfunction

