return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform-nvim",
    config = function(_, opts)
      require("conform").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = require "configs.mason",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },
  {
    "abecodes/tabout.nvim",
    lazy = false,
    opts = require "configs.tabout-nvim",
    config = function(_, opts)
      require("tabout").setup(opts)
    end,
  },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "akinsho/toggleterm.nvim",
    opts = require "configs.toggleterm-nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("toggleterm").setup(opts)
    end,
  },
}
