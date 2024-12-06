-- global settings
local plugins = {}

table.insert(plugins, {
  'numToStr/Comment.nvim',
  opts = {
          ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given false then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; gcc gbc gc[count]{motion} gb[count]{motion}
        basic = true,
        ---Extra mapping; gco, gcO, gcA
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
  }
})
-- vscode and nvim only settings
if vim.g.vscode then
  -- VSCode-specific plugins (if any)
else
  -- Ordinary Neovim plugins
  table.insert(plugins, {
    "rcarriga/nvim-notify",
    config = function()
        require("notify").setup({
            stages = "fade_in_slide_out", -- 动画效果
            timeout = 3000, -- 消息显示时长
            render = "wrapped-compact", -- 渲染样式
            on_open = function(win)
              local config = vim.api.nvim_win_get_config(win)
              config.border = "none"
              vim.api.nvim_win_set_config(win, config)
            end,
        })  
        vim.notify = require("notify") -- Override the default vim.notify with nvim-notify
    end,
  })

  table.insert(plugins, {
    "folke/noice.nvim",
    event = "VeryLazy", -- 延迟加载的触发事件
    dependencies = {
        -- 如果你懒加载了这些依赖，请确保提供 module="..." 配置
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify", -- 可选：需要通知功能时启用
    },  
    opts = {
      lsp = {
        -- 覆盖 LSP 渲染函数，改用 Treesitter
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- 配合 nvim-cmp 使用
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      messages = {
        enabled = true, -- 启用 Noice 消息功能
        view = "notify", -- 默认消息使用 nvim-notify
        view_error = "notify", -- 错误消息使用 nvim-notify
        view_warn = "notify", -- 警告消息使用 nvim-notify
        view_history = "messages", -- 历史消息视图
        view_search = "virtualtext", -- 搜索计数消息
      },
      views = {
        cmdline_popup = {
          position = {
            row = "3",
            col = "50%",
          },
          border = {
            style = "none", -- 无边框样式
            padding = { 1, 1 }, -- 内边距
          },
          filter_options = {}, -- 可选的过滤器
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
        notify = {
            backend = "notify",
            fallback = "mini",
            format = "notify",
            replace = false,
            merge = false,
        },
        confirm = {
          backend = "popup",
          relative = "editor",
          focusable = false,
          align = "center",
          enter = false,
          zindex = 210,
          format = { "{confirm}" },
          position = {
            row = 3,
            col = "50%",
          },
          size = "auto",
          border = {
            style = "none",
            padding = { 0, 0 },
            text = {
              top = " Confirm ",
            },
          },
          win_options = {
            winhighlight = {
              Normal = "NoiceConfirm",
              FloatBorder = "NoiceConfirmBorder",
            },
            winbar = "",
            foldenable = false,
          },
        },
      },
    },
  })

  table.insert(plugins, {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  })

  table.insert(plugins, {
    "kassio/neoterm",
    config = function()
      vim.g.neoterm_shell = "pwsh /nologo"
      vim.g.neoterm_marker = ';#neoterm'
      vim.g.neoterm_default_mod = "horizontal"
      vim.g.neoterm_autoinsert = 1 -- 打开终端自动进入插入模式
      vim.g.neoterm_autoscroll = 1 -- 自动滚动到最新输出
    end,
  })

  table.insert(plugins, {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        border = false,
      },
    },
  })
    
end

return plugins