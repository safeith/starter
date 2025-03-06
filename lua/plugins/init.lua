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
  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "kiddos/gemini.nvim",
    lazy = true,
    config = function()
      require("gemini").setup {
        model_config = {
          model_id = "gemini-2.0-flash",
        },
      }
    end,
  },
}
