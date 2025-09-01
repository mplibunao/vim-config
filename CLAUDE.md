# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Neovim Configuration Overview

This is a modern Neovim configuration using Lua with the lazy.nvim plugin manager. The configuration uses a modular structure where plugins are organized as separate Lua modules.

## Architecture

### Plugin Management
- **Plugin Manager**: lazy.nvim (`lua/config/lazy.lua`)
- **Plugin Definitions**: Individual plugin configurations in `lua/config/plugins/*.lua`
- **Lock File**: `lazy-lock.json` tracks exact plugin versions

### Core Components
1. **LSP Configuration**: `lua/config/plugins/lsp.lua` - Uses nvim-lspconfig with lua_ls configured
2. **Completion**: `lua/config/plugins/completion.lua` - Blink.cmp for autocompletion (preferred over nvim-cmp)
3. **File Explorer**: `lua/config/plugins/oil.lua` - Oil.nvim for file navigation (bound to `-`)
4. **Fuzzy Finding**: `lua/config/plugins/telescope.lua` - Telescope with custom multigrep implementation
5. **Syntax Highlighting**: `lua/config/plugins/treesitter.lua` - Tree-sitter with common language parsers
6. **Status Line**: `lua/config/plugins/mini.lua` - Mini.statusline for minimal status display

### Key Mappings
- **Leader Key**: Space (` `)
- **Local Leader**: Backslash (`\`)
- **Important Bindings**:
  - `<space>fd`: Find files
  - `<leader>fg`: Live multigrep (search content and filter by file pattern)
  - `<space>en`: Find files in Neovim config
  - `<space>ep`: Find files in lazy plugin directory
  - `-`: Open Oil file explorer
  - `<space>st`: Open small terminal at bottom

## Development Commands

### Plugin Management
```bash
# Update plugins - run in Neovim
:Lazy update

# Install new plugins - add to lua/config/plugins/*.lua, then
:Lazy sync

# Check plugin status
:Lazy
```

### LSP Commands
```vim
" Check LSP status
:LspInfo

" Format current buffer
:lua vim.lsp.buf.format()
```

### Testing Changes
```vim
" Reload current Lua file
:source %

" Execute current line as Lua
<space>x

" Execute visual selection as Lua
<space>x (in visual mode)
```

## Code Style Guidelines

### Lua Files
- **Indentation**: 2 spaces (defined in .editorconfig)
- **Module Structure**: Each plugin gets its own file in `lua/config/plugins/`
- **Plugin Spec Format**: Return a table with plugin specifications
- **LSP Capabilities**: Always pass blink.cmp capabilities to LSP servers

### Adding New Plugins
1. Create a new file in `lua/config/plugins/` or add to existing category file
2. Return a table with the plugin specification
3. Use lazy loading sparingly (Oil.nvim explicitly sets `lazy = false`)
4. Run `:Lazy sync` to install

### Custom Functionality
- **Custom Commands**: Place in `plugin/` directory as Lua files
- **Telescope Extensions**: Add to `lua/config/telescope/` as separate modules
- **Ftplugin**: Language-specific settings in `after/ftplugin/`

## Important Notes
- Blink.cmp is preferred over nvim-cmp for completion
- The configuration auto-formats on save if LSP supports it
- Terminal mode escape is mapped to `<esc><esc>`
- Floating terminal available via `:Floaterm` command
- Multigrep in Telescope uses double space to separate pattern from file filter
- be verbose and detailed in explaining to the user what you're trying to do