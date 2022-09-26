" set leader key
let g:mapleader = "\<Space>"

syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap                                " Wrap lines visually
"set linebreak                           " don't wrap in the middle of a word
"set nolist                              " For wrapping as well
"set textwidth=80                        " Hard wrap at 80 characters (usual terminal width and for readability)
"set colorcolumn=80                      " Show visual indicator for 80 char border
"highlight ColorColumn guibg=Black       " make border black in gui vims
"highlight ColorColumn ctermbg=0         " make border black in terminal vim
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set softtabstop=2
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
"set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set cindent                             " Automaticall indent braces
set laststatus=0                        " Always display the status line
set nonumber                            " No Line numbers
set norelativenumber                    " No relative line numbers (adds lag)
set nocursorline                        " Enable highlighting of the current line (Adds lag)
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set ignorecase                          " ignores case when searching
set smartcase                           " You search will be case sensitive if it contains an uppercase letter
set noerrorbells                        " Disable error bells
set vb t_vb=                            " Disable error bells
set noswapfile                          " Disable swapfiles
set incsearch                           " Highlight the searching string while typing
set nocompatible                        " For vim wiki
filetype plugin on                      " For vim wiki, nerdcommenter
set whichwrap+=<,>,h,l                  " move left/right on end of the line goes to next line
autocmd BufRead,BufNewFile *.md setlocal spell " Spell check
autocmd FileType gitcommit setlocal spell      " spell check
set complete+=kspell                           " Autocomplete
" I think this conflicts with indent-blackline.lua as is overrides everything instead of appending
"set listchars=tab:·\ ,trail:·,precedes:←,extends:→,nbsp:·


"set regexpengine=1                     " For performance
set lazyredraw                         " redraw as few times as possible (for performance)
"set synmaxcol=128  " avoid slow rendering for long lines
"syntax sync minlines=64  " faster syntax hl
"

setlocal foldmethod=syntax              " Automatic folding by syntax
set foldlevelstart=20

"set autochdir                          " Your working directory will always be the same as your working directory
"This is changes the directory everytime you open a file so if you open in a
"nested directory you're cwd will now be set there

set pyx=3


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

