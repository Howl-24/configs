-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps for the terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":split | terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ":terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- 在已有终端执行 Python 脚本，或打开新终端执行
vim.api.nvim_set_keymap("n", "<leader>py", ":w<CR>:lua SendToTerminal('python ' .. vim.fn.expand('%:p'))<CR>", { noremap = true, silent = true })