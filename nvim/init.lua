-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.shell = "pwsh /nologo"
vim.o.shellcmdflag = "-NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.o.shellquote = ""
vim.o.shellxquote = ""

vim.g.python3_host_prog = 'C:/Users/Howl/scoop/apps/python/3.13.0/python.exe'
vim.env.VIRTUAL_ENV = 'C:/Users/Howl/myenv'
vim.env.PATH = vim.env.VIRTUAL_ENV .. '/Scripts;' .. vim.env.PATH
vim.g.python3_host_prog = vim.env.VIRTUAL_ENV .. '/Scripts/python.exe'