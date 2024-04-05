require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>u", "ddkP", { desc = "Move line Up" })
map("n", "<leader>d", "ddp", { desc = "Move line Down" })
map("n", "<leader>X", ":%bd<CR><leader>e", { desc = "Close all Buffers" })
map("n", "j", "jzz", {desc = "Cursor Down"})
map("n", "k", "kzz", {desc = "Cursor Up"})
map("n", "<leader>O", "O<ESC>", {desc = "Create Line Down without Insert Mode"})
map("n", "<leader>o", "o<ESC>", {desc = "Create Line Up without Insert Mode"})
vim.wo.number = true
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
