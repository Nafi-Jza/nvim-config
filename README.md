# NafiJza's Neovim Config

Personal Neovim configuration based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) v6+, customized with the `AstroCommunity` package set, custom plugins, and a personal `polish.lua` overlay.

## Layout

```
.
├── init.lua                  # AstroNvim bootstrap (loads lazy_setup + polish)
├── lua/
│   ├── lazy_setup.lua        # lazy.nvim spec — pulls in AstroNvim + community + plugins
│   ├── community.lua         # AstroCommunity imports (Lua, Dart, 50+ colorschemes)
│   ├── polish.lua            # Personal autocmds (auto-reload files on focus)
│   └── plugins/
│       ├── astroui.lua       # Default colorscheme: gruvbox-baby, custom spinner icons
│       ├── astrocore.lua     # Vim options, mappings, filetype detection
│       ├── avante.lua        # AI coding assistant (Gemini / OpenRouter / Ollama)
│       └── supermavenCopilot.lua  # Supermaven completion (Tab-accept)
├── lazy-lock.json            # Pinned plugin versions
├── .luarc.json               # Lua LSP: disable built-in formatter
├── .neoconf.json             # Neoconfig for lua_ls
├── .stylua.toml              # StyLua formatter settings
├── neovim.yml                # Selene linter base (lua51)
└── selene.toml               # Selene linter rules (relaxed)
```

## Install on Windows

```powershell
# Back up any existing config
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

# Clone this repo as the new config
git clone https://github.com/Nafi-Jza/nvim-config.git $env:LOCALAPPDATA\nvim

# Launch Neovim — lazy.nvim will auto-install
nvim
```

## Install on Linux / macOS

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone https://github.com/Nafi-Jza/nvim-config.git ~/.config/nvim
nvim
```

## Notes

- Default colorscheme: **gruvbox-baby** (set in `lua/plugins/astroui.lua`). Other colorschemes from AstroCommunity are available — try `:Telescope colorscheme`.
- Avante provider default is `gemini` with `gemma-4-31b-it`. OpenRouter (`openrouter/elephant-alpha`) and Ollama (`kimi-k2.6:cloud` on `http://127.0.0.1:11434`) are also configured.
- `polish.lua` auto-reloads buffers when files change on disk and Neovim regains focus.
