local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "mypy", "isort" },
    terraform = { "tflint" },
  },
}

require("conform").setup(options)
