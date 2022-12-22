local M = {
    url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    event = 'BufReadPre',
}

function M.config()
    local lsp_lines = require 'lsp_lines'
    lsp_lines.setup()
    vim.diagnostic.config {
        virtual_text = false,
    }

    -- disable in lazy
    vim.api.nvim_create_augroup('LspLines', {})
    vim.api.nvim_create_autocmd('BufReadPre lazy', {
        group = 'LspLines',
        callback = function(args)
            vim.diagnostic.config {
                virtual_text = true,
                virtual_lines = false,
            }
        end,
    })
end

function M.toggle()
    vim.diagnostic.config {
        virtual_text = not require('lsp_lines').toggle(),
    }
end

return M
