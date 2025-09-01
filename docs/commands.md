# Neovim Commands Reference Guide

This guide helps transition from which-key bindings to native Vim commands and direct mappings.

## Window Management

### Use Native `<C-w>` Commands Instead
| Old Which-Key | Native Command | Description |
|---------------|----------------|-------------|
| `<space>wh` | `<C-w>h` | Move to left window |
| `<space>wj` | `<C-w>j` | Move to bottom window |
| `<space>wk` | `<C-w>k` | Move to top window |
| `<space>wl` | `<C-w>l` | Move to right window |
| `<space>w/` | `<C-w>v` or `:vsplit` | Split window vertically |
| `<space>w-` | `<C-w>s` or `:split` | Split window horizontally |
| `<space>wd` | `<C-w>q` or `:q` | Close current window |
| `<space>wc` | `<C-w>o` or `:only` | Close all other windows |
| `<space>w=` | `<C-w>=` | Equalize window sizes |
| `<space>wH` | `<C-w>H` | Move window to far left |
| `<space>wJ` | `<C-w>J` | Move window to very bottom |
| `<space>wK` | `<C-w>K` | Move window to very top |
| `<space>wL` | `<C-w>L` | Move window to far right |
| `<space>1-9` | `1<C-w>w` to `9<C-w>w` | Jump to window by number |

### Window Resizing
| Old Which-Key | Native Command | Description |
|---------------|----------------|-------------|
| `<space>wrh+` | `<C-w>+` or `:resize +1` | Increase height |
| `<space>wrh-` | `<C-w>-` or `:resize -1` | Decrease height |
| `<space>wrw+` | `<C-w>>` or `:vertical resize +1` | Increase width |
| `<space>wrw-` | `<C-w><` or `:vertical resize -1` | Decrease width |

### Dvorak Note
Since you use Dvorak, the hjkl movements map to dhtn. Consider:
- Using `<C-w>w` to cycle through windows
- Using `<C-w>p` for previous window
- Or adding Alt-based mappings for comfort

## Buffer Management

### Use Native Commands
| Old Which-Key | Native Command | Description |
|---------------|----------------|-------------|
| `<space>bb` | `:ls` then `:b <number>` | List and switch buffers |
| `<space>bd` | `:bd` or `:bdelete` | Delete current buffer |
| `<space>bq` | `:%bd` | Delete all buffers |
| `<space><tab>` | `<C-^>` or `<C-6>` | Alternate buffer (last used) |
| - | `:bn` or `]b` | Next buffer |
| - | `:bp` or `[b` | Previous buffer |

## Tab Management

### Use Native Tab Commands
| Old Which-Key | Native Command | Description |
|---------------|----------------|-------------|
| `<space>pTn` | `:tabnew %` | Open current file in new tab |
| `<space>pTl` | `:tabs` | List all tabs |
| `<space>pTm` | `:tabmove +` | Move tab forward |
| `<space>pTM` | `:tabmove -` | Move tab backward |
| - | `gt` | Go to next tab |
| - | `gT` | Go to previous tab |
| - | `1gt` to `9gt` | Go to tab by number |
| - | `:tabclose` | Close current tab |

## File Operations

### Use Commands Instead of Which-Key
| Old Which-Key | Command | Description |
|---------------|---------|-------------|
| `<space>pf` | `:Files` | FZF file search (keep as is) |
| `<space>fev` | `:e $MYVIMRC` | Edit vimrc |
| `<space>fevr` | `:source $MYVIMRC` | Reload vimrc |
| `<space>fevi` | `:Lazy` | Open Lazy plugin manager |

## Jump Navigation

### Use Native Jump Commands
| Old Which-Key | Native Command | Description |
|---------------|----------------|-------------|
| `,o` | `<C-o>` | Jump to previous location |
| `,n` | `<C-i>` | Jump to next location |
| - | `''` | Jump to last jump position |
| - | `g;` | Previous change location |
| - | `g,` | Next change location |

## Search Commands

### Run as Ex Commands When Needed
| Old Which-Key | Command | Description |
|---------------|---------|-------------|
| `<space>sc` | `:Commands` | FZF commands |
| `<space>sh` | `:History` | FZF file history |
| `<space>sH` | `:History:` | FZF command history |
| `<space>s/` | `:History/` | FZF search history |
| `<space>sb` | `:BLines` | Search in current buffer |
| `<space>sl` | `:Lines` | Search in all buffers |
| `<space>sp` | `:Helptags` | Search help tags |

## Session Management

### Use Commands Directly
| Old Which-Key | Command | Description |
|---------------|---------|-------------|
| `<space>Sl` | `:SLoad` | Load session |
| `<space>Ss` | `:SSave` | Save session |
| `<space>Sd` | `:SDelete` | Delete session |
| `<space>Sc` | `:SClose` | Close session |

## Git Commands (Keep in Which-Key or Use Fugitive)

These are complex enough to justify which-key or dedicated git plugin:
- `:Git blame` - Git blame
- `:Git commit` - Git commit  
- `:Git diff` - Git diff
- `:Git log` - Git log
- `:LazyGit` - Open LazyGit

## LSP/Completion Commands

For your new setup with blink.cmp and native LSP:

### Blink.cmp Autocomplete Bindings
| Operation | Default Binding | Description |
|-----------|----------------|-------------|
| Accept completion | `<C-y>` | Accept selected completion item |
| Accept completion (alternative) | `<Tab>` | Accept (if using 'super-tab' preset) |
| Navigate down | `<C-n>` or `↓` | Select next completion item |
| Navigate up | `<C-p>` or `↑` | Select previous completion item |
| Open menu/docs | `<C-Space>` | Open completion menu or documentation |
| Cancel completion | `<C-e>` | Hide completion menu |
| Toggle signature help | `<C-k>` | Show function signature (if enabled) |

**Note**: You're using the 'default' preset which uses `<C-y>` to accept. The old behavior of `<Tab>` to accept would require switching to the 'super-tab' preset in your blink.cmp config.

### Navigation
| Operation | Default Binding | Description |
|-----------|----------------|-------------|
| Go to definition | `gd` | Jump to definition |
| Go to declaration | `gD` | Jump to declaration |
| Go to implementation | `gi` | Jump to implementation |
| Go to type definition | `gy` | Jump to type definition |
| Go to references | `gr` | List references |
| Hover documentation | `K` | Show hover info |
| Signature help | `<C-k>` | Show signature help |

### Diagnostics
| Operation | Default Binding | Description |
|-----------|----------------|-------------|
| Next diagnostic | `]d` | Jump to next diagnostic |
| Previous diagnostic | `[d` | Jump to previous diagnostic |
| Show diagnostics | `:lua vim.diagnostic.open_float()` | Show diagnostics in float |
| List all diagnostics | `:lua vim.diagnostic.setloclist()` | List in location list |

### Code Actions
| Operation | Command | Description |
|-----------|---------|-------------|
| Code action | `:lua vim.lsp.buf.code_action()` | Show available code actions |
| Rename | `:lua vim.lsp.buf.rename()` | Rename symbol |
| Format | `:lua vim.lsp.buf.format()` | Format buffer |

## Terminal Operations

Your current setup already has good mappings:
- `<space>st` - Small terminal at bottom (custom in init.lua)
- `:Floaterm` - Floating terminal (custom command)

## Folding

| Operation | Command | Description |
|-----------|---------|-------------|
| Toggle fold | `za` | Toggle fold at cursor |
| Close all folds | `zM` | Close all folds |
| Open all folds | `zR` | Open all folds |
| Close fold | `zc` | Close fold at cursor |
| Open fold | `zo` | Open fold at cursor |

## Quick Tips for Transition

1. **Start with the most frequent operations**: Window and buffer navigation
2. **Use `:` liberally**: Many operations are faster as commands
3. **Learn jump motions**: `<C-o>` and `<C-i>` are incredibly useful
4. **Embrace command-line mode**: `:b <partial-name><Tab>` for buffer switching
5. **For Dvorak users**: Consider remapping only the most painful combinations

## Recommended Direct Mappings for Dvorak

Add these to your init.lua for comfort:
```lua
-- Alt-based window navigation (avoiding hjkl issues on Dvorak)
vim.keymap.set('n', '<M-Left>', '<C-w>h')
vim.keymap.set('n', '<M-Down>', '<C-w>j')
vim.keymap.set('n', '<M-Up>', '<C-w>k')
vim.keymap.set('n', '<M-Right>', '<C-w>l')

-- Buffer navigation
vim.keymap.set('n', '[b', ':bprevious<CR>')
vim.keymap.set('n', ']b', ':bnext<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')
```

## Commands Worth Keeping in Which-Key

These are complex or infrequent enough to benefit from which-key:
- Git workflows (multi-step operations)
- Wiki management (domain-specific)
- Plugin-specific commands
- Complex LSP operations (organize imports, workspace commands)
- Project-wide operations