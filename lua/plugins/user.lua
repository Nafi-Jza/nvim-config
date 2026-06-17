return {
  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███    ██  ██   ██  ██ ███    ███",
            "████   ██  ██   ██  ██ ████   ████",
            "██ ██  ██  ██   ██  ██ ██ ████  ██",
            "██  ██ ██   ██  ██  ██ ██  ██   ██",
            "██   ████    ████   ██ ██       ██",
          }, "\n"),
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
