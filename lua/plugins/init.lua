return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "pyright",
        "black",
        "mypy",
        "isort",
        "tflint",
        "terraform-ls",
        "gopls",
        "goimports",
        "fixjson",
        "actionlint",
        "yaml-language-server",
        "rust-analyzer",
        "rustfmt",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "json",
        "yaml",
        "python",
        "terraform",
        "rust",
      },
    },
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "hashivim/vim-terraform",
    lazy = false,
  },
}
