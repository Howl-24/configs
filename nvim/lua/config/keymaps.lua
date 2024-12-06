-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- global settings

-- vscode and nvim only settings
if (vim.g.vscode) then
    -- VSCode extension
else
    -- ordinary neovim
    vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap("n", "<leader>to", ":Topen<CR>", { noremap = true, silent = true }) -- 打开终端
    vim.api.nvim_set_keymap("n", "<leader>tn", ":Tnew<CR>", { noremap = true, silent = true }) -- 新建终端
    vim.api.nvim_set_keymap("n", "<leader>tc", ":Tclose<CR>", { noremap = true, silent = true }) -- 关闭终端
    vim.api.nvim_set_keymap("n", "<leader>tt", ":Ttoggle<CR>", { noremap = true, silent = true }) -- 切换终端
    vim.api.nvim_set_keymap("n", "<leader>py", ":w<CR>:T python \"%:p\"<CR>", { noremap = true, silent = true }) -- 运行当前文件
end