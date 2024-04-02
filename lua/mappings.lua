require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader><Up>", "ddkP")
map("n", "<leader><Down>", "ddp")
vim.wo.number = true
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
