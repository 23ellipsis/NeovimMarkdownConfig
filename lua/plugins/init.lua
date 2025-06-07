-- ~/.config/nvim/lua/plugins/init.lua

local plugins = {
  { "nvim-lua/plenary.nvim" },

  { "nvim-tree/nvim-web-devicons", lazy = true },

  {
    "NvChad/base46",
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  {
    "NvChad/ui",
    config = function()
      require("nvchad")
    end,
    dependencies = {
      "NvChad/base46", 
    },
  },

  { "NvChad/volt" },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_extend("force", opts.ensure_installed or {}, {
        "markdown",
        "markdown_inline",
      })

      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true
    end,
  },
}

return plugins
