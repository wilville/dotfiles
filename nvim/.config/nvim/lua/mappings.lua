require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F3>", ":Calendar<CR>")
map("n", "<C-f>", ":CreateFig<CR>")
map("i", "<C-e", "<ESC>A") 
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
