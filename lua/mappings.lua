require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- Tmux navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate Left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate Up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate Right" })
map("n", "<leader>fe", "<cmd> FormatEnable<CR>", { desc = "Enable formatter" })
map("n", "<leader>fd", "<cmd> FormatDisable<CR>", { desc = "Disable formatter" })
