return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = "SupermavenLogin",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-h>",
        next_word = "<C-f>",
      },
      ignore_filetypes = { "bigfile", "checkhealth", "NvimTree", "neo-tree", "snacks_dashboard" },
      log_level = "warn",
    })
  end,
}
