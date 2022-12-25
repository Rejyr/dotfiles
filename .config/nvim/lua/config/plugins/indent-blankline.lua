local M = {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufReadPre',
}

function M.config()
    vim.opt.list = true
    vim.opt.listchars:append 'eol:↴'

    require('indent_blankline').setup {
        use_treesitter_scope = true,
        show_current_context = true,
        show_current_context_start = true,
    }
end

return M
