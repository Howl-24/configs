-- global settings
local plugins = {}
-- vscode and nvim only settings
if (vim.g.vscode) then
  -- VSCode extension
else
  -- neovide
  if vim.g.neovide then
    -- 设置 Neovide 透明度
    vim.g.neovide_transparency = 0.8 -- 透明度，范围为 0.0（完全透明）到 1.0（完全不透明）
    vim.g.neovide_background_color = "#00000000" -- ARGB 格式，完全透明
  
    -- 如果需要整体窗口更透明，可以通过 alpha 设置
    vim.g.neovide_floating_blur_amount_x = 4
    vim.g.neovide_floating_blur_amount_y = 4
  
    vim.opt.winblend = 50 -- Set transparency for floating windows (0-100)
    vim.opt.pumblend = 50 -- Set transparency for popup menus (0-100)
  end
  -- ordinary neovim
  table.insert(plugins, { "rebelot/kanagawa.nvim" })
  
  table.insert(plugins, {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  })
  
  table.insert(plugins, {
    "xiyaowong/transparent.nvim",
    lazy = false, -- 禁用懒加载
    priority = 1000, -- 确保插件优先加载
    config = function()
    require("transparent").setup({
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {
        'NormalFloat',
        'FloatBorder',
        'NoiceCmdlineIcon',
        'NoiceCmdlineIconSearch',
        "NoiceConfirmBorder",
        'Pmenu',
      },
      exclude_groups = {
      },
    })
    require('transparent').clear_prefix('BufferLine')
    require('transparent').clear_prefix('NeoTree')
    require('transparent').clear_prefix('lualine')
    end,
  })

end

return plugins