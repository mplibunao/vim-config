# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration repository built on vim-plug with a modular VimScript/Lua architecture. The configuration includes extensive language support, code completion through CoC (Conquer of Completion), Git integration, and various developer tools.

## Architecture

### Configuration Loading Order
The main entry point `init.vim` sources configuration files in this order:
1. `plugins.vim` - Plugin declarations using vim-plug
2. `functions/index.vim` - Custom Vim functions
3. `general/settings.vim` - Core Neovim settings
4. `mappings/index.vim` - Key mappings (space and comma as leaders)
5. Theme files (`themes/onedark.vim`, `themes/airline.vim`)
6. Plugin configurations (`plug-config/*.vim`)
7. Lua modules (`lua/*.lua`)

### Key Directories
- `plug-config/` - Individual plugin configurations
- `mappings/` - WhichKey configurations for space and comma leaders
- `functions/` - Custom Vim functions
- `lua/` - Lua-based configurations (colorizer, indent guides)
- `snips/` - User snippets directory
- `themes/` - Theme and statusline configurations

## Common Development Commands

### Plugin Management
```vim
:PlugInstall    " Install plugins
:PlugUpdate     " Update plugins
:PlugClean      " Remove unused plugins
:checkhealth    " Check Neovim health and dependencies
```

### CoC Commands
```vim
:CocInstall {extension}    " Install CoC extension
:CocList extensions        " List installed extensions
:CocConfig                 " Edit coc-settings.json
:CocRestart               " Restart CoC service
```

### Key Leader Mappings
- **Space Leader**: Primary actions (files, buffers, git, terminal)
- **Comma Leader**: Secondary actions and toggles
- Check `mappings/space_whichkey.vim` and `mappings/comma_whichkey.vim` for full mappings

## Language Support

### Primary Languages
- **TypeScript/JavaScript**: Full LSP support via CoC-tsserver
- **Elixir**: ElixirLS with custom path configuration
- **Python**: pynvim integration required
- **Terraform**: terraform-ls and tflint
- **Docker**: docker-langserver

### Formatting Configuration
Auto-format on save is enabled for: TypeScript, JavaScript, JSON, GraphQL, CSS, Markdown, SCSS, Elixir, Terraform, Python, Docker, HTML, Prisma

## Important Settings

### Tab/Indentation
- Tab width: 2 spaces
- Expand tabs to spaces
- Smart indenting enabled

### CoC Settings (`coc-settings.json`)
- Prettier configuration: no semicolons, single quotes, trailing commas
- TypeScript: prefer shortest import paths, use local tsdk
- Tailwind CSS: enabled with experimental class regex for cva
- ESLint: auto-fix on save

## Dependencies

Required system tools:
- `ripgrep` - Fast text search
- `lazygit` - Git TUI
- `ranger` - File manager
- `pbcopy/xclip` - Clipboard integration
- `python3` with `pynvim`
- `node` with `neovim` package

## Plugin Ecosystem

### Core Plugins
- **neoclide/coc.nvim**: Intellisense and LSP support
- **junegunn/fzf.vim**: Fuzzy finder integration
- **github/copilot.vim**: AI code completion
- **vim-airline**: Status line

### Git Integration
- **lazygit.nvim**: Git interface
- **vim-signify**: Git diff indicators
- **vim-fugitive**: Git commands

### Development Tools
- **vim-floaterm**: Floating terminal
- **vim-which-key**: Key binding hints
- **nerdcommenter**: Code commenting
- **vim-polyglot**: Language pack

## Working with This Config

When modifying configurations:
1. Plugin declarations go in `plugins.vim`
2. Plugin-specific configs go in `plug-config/{plugin}.vim`
3. Key mappings should be added to appropriate WhichKey config
4. Lua modules go in `lua/` directory
5. Follow existing indentation patterns (2 spaces)

When adding new language support:
1. Add CoC extension or language server to `coc-settings.json`
2. Add file type detection in `general/settings.vim` if needed
3. Add format-on-save filetype to `coc-settings.json` if desired