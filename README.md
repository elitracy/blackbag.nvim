# Black Bag 🎬

A focused Neovim colorscheme inspired by the cinematic terminal UI aesthetics from the Black Bag movie. Features light blue/white-blue text on transparent black with strategic orange highlights for maximum focus.

## Features

- ✨ **Focus-oriented design** - Orange highlights appear only for critical focus points
- 🌊 **Calm syntax highlighting** - Blue/cyan color scheme reduces visual noise
- 🪟 **Transparent background** - Seamless terminal integration
- 🎯 **Strategic color use** - Every color has a purpose
- 🔌 **Full plugin support** - Treesitter, LSP, Git signs, pickers, completion, and more

## Screenshots

![Black Bag colorscheme](blackbagui.png)

## Color Philosophy

This theme uses color strategically to guide your attention:

- **Orange (rare)** - Only for primary focus: search matches, current line number, active selections
- **Light red** - Secondary attention: diagnostics, git changes, warnings
- **Blue/cyan** - Calm syntax for extended coding sessions
- **White/light blue** - Clean, readable text

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "elitracy/blackbag.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("blackbag").setup()
  end
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "elitracy/blackbag.nvim",
  config = function()
    require("blackbag").setup()
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'elitracy/blackbag.nvim'
```

Then in your config:
```lua
lua require('blackbag').setup()
```

### Manual

```bash
git clone https://github.com/elitracy/blackbag.nvim ~/.config/nvim/blackbag.nvim
```

Add to your `init.lua`:
```lua
vim.cmd("colorscheme blackbag")
```

## Color Palette

### Base Colors
| Color | Hex | Usage |
|-------|-----|-------|
| Background | `NONE` | Transparent |
| Primary Text | `#d0e8ff` | Main text |
| Bright Text | `#ffffff` | Emphasis |
| Dimmed Text | `#a0c5e0` | Secondary text |
| Comments | `#556677` | Comments, subtle text |

### Focus Colors
| Color | Hex | Usage |
|-------|-----|-------|
| Orange | `#ff8800` | Search, current position |
| Orange Bright | `#ffaa44` | Active selections |

### Accent Colors
| Color | Hex | Usage |
|-------|-----|-------|
| Red Light | `#ff6b6b` | Errors, warnings |
| Red Dim | `#cc5555` | Secondary alerts |
| Red Subtle | `#994444` | Tertiary accents |

### Syntax Colors
| Color | Hex | Usage |
|-------|-----|-------|
| Cyan Bright | `#88eeff` | Functions, methods |
| Cyan | `#66d9ef` | Strings |
| Blue | `#78b9ff` | Keywords, types |
| Blue Bright | `#a0d0ff` | Numbers, constants |

## Plugin Support

Black Bag includes custom highlighting for:

- **Syntax**: Treesitter, LSP semantic tokens
- **Diagnostics**: Native LSP diagnostics with red accents
- **Git**: GitSigns, diff highlighting
- **Pickers**: Telescope, Snacks.nvim (orange matches)
- **Completion**: blink.cmp, nvim-cmp (orange matched text)
- **Status**: Lualine (auto-detection)
- **UI**: Bufferline, Notify, and more

## Usage with Transparency

This theme is designed for transparent backgrounds. It works great with [transparent.nvim](https://github.com/xiyaowong/transparent.nvim):

```lua
{
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "FloatBorder",
      },
    })
  end
}
```

## Requirements

- Neovim >= 0.8.0
- True color terminal (`set termguicolors`)

## License

MIT

## Contributing

Issues and pull requests welcome!
