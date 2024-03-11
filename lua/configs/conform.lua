local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black", "mypy", "isort" },
    terraform = { "tflint" },
  },

  format_on_save = {
    async = false,
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
