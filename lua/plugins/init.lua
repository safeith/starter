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
    "github/copilot.vim",
    lazy = false,
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
        "yamlfmt",
        "actionlint",
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
    "iamcco/markdown-preview.nvim",
    lazy = false,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
