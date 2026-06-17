return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = vim.fn.has("win32") ~= 0
      and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
  opts = {
    provider = "gemini",
    gemini = { model = "gemma-4-31b-it" },
    openai = {
      endpoint = "https://openrouter.ai/api/v1",
      model = "openrouter/elephant-alpha",
    },
    ollama = {
      endpoint = "http://127.0.0.1:11434",
      model = "kimi-k2.6:cloud",
    },
  },
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
}
