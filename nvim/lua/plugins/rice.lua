vim.o.guifont = "MesloLGL Nerd Font:h12"

return {
  -- Kanagawa theme plugin
  { "rebelot/kanagawa.nvim" },

  -- LazyVim plugin with options to set the colorscheme
  { 
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa"
    }
  },

  -- Transparent.nvim plugin with configuration for transparency effects
  { 
    "xiyaowong/transparent.nvim",
    opts = {
      -- Default highlight groups to set as transparent
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
      },

      -- Additional groups to be set as transparent
      extra_groups = {
        'NoiceCmdlineIcon',
        'NoiceCmdlinePopupBorder',
        'NoiceCmdlineIconSearch',
        "NoiceConfirmBorder",
        "WhichKeyBorder",
        "WhichKeyNormal",
        "WhichKeyTitle",
        "TelescopeBorder",
      },  -- Add custom groups if needed

      -- Groups you don't want to apply transparency to
      exclude_groups = {},  -- For example, add 'StatusLine' here if you don't want to affect it

      -- Function to run when highlight groups are cleared
      on_clear = function()
        -- User's custom code to run after clearing transparency
      end,
    }
  },
    -- Snacks.nvim plugin with configuration for the dashboard
  { 
    "snacks.nvim",
    opts = {
      dashboard = {
        -- Dashboard specific configurations
        pane_gap = 6, -- empty columns between vertical panes
        preset = {
          header = [[
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⢫⣝⣛⡿⠟⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠿⢿⣿⠿⠿⠿⠿⠿⠿⠟⠛⠛⠛⠛⠛⠛⠛⠛⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⠸⣉⡩⠀⠈⢔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠛⠛⠛⠻⣿⣿
⣿⠀⣾⣥⡂⠀⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⠀⢀⠥⡾⡿⢾⣿
⣿⡗⢹⡇⠛⠀⠈⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⢐⡪⡅⣡⣿⣿
⣿⣇⠷⢾⣭⠄⠀⠀⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⢠⠉⠔⠆⣿⣿⣿
⣿⣿⣷⡆⠯⠮⠄⠀⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡌⣭⡿⣸⣿⣿⣿
⣿⣿⣿⣷⠄⠹⡫⣂⠈⠂⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⣽⣤⣰⣿⣿⣿⣿
⣿⣿⣿⣿⡜⢿⠿⣣⠆⠀⠂⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠂⣰⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣵⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣤⠈⢋⣴⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠀⣠⠞⢡⣾⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣷⡍⡣⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠁⠈⢛⠻⣿⡟⡐⠀⠀⠀⠀⠀⠀⠀⢠⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⠖⠀⠀⠀⠀⠀⠀⢀⠄⠀⠀⠀⠀⠀⠀⢠⣜⠀⠀⠤⠀⠀⣴⣤⣈⣫⠞⠀⠀⠀⠀⠀⠀⠀⠰⢿⡇⢀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿
⠛⠿⢿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⡷⠅⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣶⣶⣿⣿⣿⣷⣤⣴⣶⣏⡄⠀⠀⠀⠘⠁⠀⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⢸⣿⣿⣿
⡀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢝⡇⠀⠀⠀⠀⠀⢀⠀⢌⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⡶⣿⣧⣄⡂⠀⢠⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢻⡄⣿⣿⣿
⠟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠸⣿⣶⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡜⣧⢸⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠄⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣝⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠙⢃⡏⢸⣿⣿
⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢤⢀⠤⣀⢀⠐⣲⠶⣤⣬⣭⣍⣙⡛⠿⢿⣷⣶⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣿⣿⣿
⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠔⠚⠀⠀⠈⠁⠀⠉⣽⣿⣿⣶⣯⣽⣛⣻⠿⣶⣦⣭⢙⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿
⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⣤⣉⣐⠾⢿⣄⠀⠀⠀⠀⠀⠀⠉⢙⠛⡻⠿⢿⣿⣿⣿⣷⣾⣭⣝⣳⠦⣦⣂⠀⠀⠀⠂⠱⠎⠀⠴⠀⠀⠀⠀⠀⠀⠀⠀⠄⣀⠙
⠝⠠⠀⠀⠀⠀⠠⠀⠀⠀⠀⠍⠙⠛⠿⣿⣿⣿⡀⡀⠀⠀⠀⠀⣶⣤⣆⡔⢛⣶⣶⣬⣭⣙⡛⠿⠿⣿⣿⣷⣾⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⢠
⡇⣾⡀⠀⠀⠀⠀⠂⢀⣈⣀⣀⣀⠈⠀⠠⠈⡩⠓⠔⠀⠀⠀⠀⢸⣿⣿⣿⣷⣾⣝⣻⣿⣛⣛⣿⣵⣶⣶⣬⣍⢩⠍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠰⠮⠬
⣿⣾⣿⣄⠀⠆⢀⣴⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠈⠀⠀⠀⠘⠰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠏⠀⠀⠀⠀⠀⠀⠈⠃⣀⠘⠃⠀⣤⡍⣤⢶⣾
⣿⣿⣿⣿⡗⢀⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⡀⠀⠀⠈⠘⠒⠭⣻⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣛⠭⠢⠐⠂⠁⠀⠀⠀⠀⠀⠺⢿⣿⣯⣼⣿⣿⡽⣧⢻
          ]],
        },
        sections = {
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
          {
            pane = 2,
            { section = "header", width = 80 },
          },
        },
      },
    }
  },
}