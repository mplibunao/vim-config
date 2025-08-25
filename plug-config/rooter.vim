" vim-rooter configuration for git worktree support

" Don't change directory automatically (we'll do it manually)
let g:rooter_manual_only = 0

" Pattern detection order - prioritize .git file (worktree) over .git directory
let g:rooter_patterns = ['.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/', 'Makefile', 'package.json']

" Change to current buffer's directory when switching buffers
let g:rooter_change_directory_for_non_project_files = 'current'

" Resolve symlinks to find the true project root
let g:rooter_resolve_links = 1

" Use current working directory as fallback
let g:rooter_cd_cmd = 'cd'

" Silent mode - don't echo the directory change
let g:rooter_silent_chdir = 1

" Custom root finder for git worktrees
" This function checks if we're in a worktree and changes to the worktree root
function! FindGitWorktreeRoot()
  " First check if we're in a git repository at all
  let git_dir = system('git rev-parse --git-dir 2>/dev/null')
  if v:shell_error != 0
    return ''
  endif
  
  " Check if this is a worktree (has .git file, not directory)
  let current_dir = expand('%:p:h')
  let git_file = findfile('.git', current_dir . ';')
  
  if !empty(git_file) && !isdirectory(git_file)
    " This is a worktree, return the directory containing .git file
    return fnamemodify(git_file, ':h')
  endif
  
  " Otherwise, use git to find the root
  let root = system('git rev-parse --show-toplevel 2>/dev/null')
  if v:shell_error == 0
    return substitute(root, '\n', '', '')
  endif
  
  return ''
endfunction

" Add our custom root finder to the list
if !exists('g:rooter_custom_patterns')
  let g:rooter_custom_patterns = []
endif

" Register the custom finder (this will be called for each buffer)
augroup RooterWorktree
  autocmd!
  autocmd BufEnter * call s:CheckWorktreeRoot()
augroup END

function! s:CheckWorktreeRoot()
  let worktree_root = FindGitWorktreeRoot()
  if !empty(worktree_root)
    execute 'cd ' . fnameescape(worktree_root)
  endif
endfunction