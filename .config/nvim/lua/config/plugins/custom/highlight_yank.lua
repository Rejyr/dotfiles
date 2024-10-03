local M = {}

function M.setup()
    local augroup = vim.api.nvim_create_augroup('highlight_yank', {})
    vim.api.nvim_create_autocmd('TextYankPost', {
        callback = function()
            vim.highlight.on_yank { higroup = 'Visual', timeout = 1000 }
        end,
        group = augroup,
    })
end

return M
