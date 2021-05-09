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
