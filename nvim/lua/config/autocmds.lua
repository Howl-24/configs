-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.cmd("cd $HOME")

function SendToTerminal(cmd)
    -- 遍历所有 buffer，寻找已经打开的终端
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].buftype == "terminal" then
            -- 尝试安全获取终端的 job id，避免出错
            local success, job_id = pcall(vim.api.nvim_buf_get_var, buf, "terminal_job_id")
            if success and job_id then
                -- 添加回车符（'\r'）来模拟按下回车键
                vim.fn.chansend(job_id, cmd .. "\r")
                return
            end
        end
    end

    -- 如果没有找到终端，则打开一个新终端
    vim.cmd("split | terminal")

    -- 延迟以确保终端成功启动，然后获取 job_id 并发送命令
    vim.defer_fn(function()
        local term_buf = vim.api.nvim_get_current_buf()  -- 获取当前终端 buffer
        local success, job_id = pcall(vim.api.nvim_buf_get_var, term_buf, "terminal_job_id")
        if success and job_id then
            -- 发送命令并加上回车符
            vim.fn.chansend(job_id, cmd .. "\r")
        end
    end, 100) -- 延迟 100ms 确保终端启动完成
end

  