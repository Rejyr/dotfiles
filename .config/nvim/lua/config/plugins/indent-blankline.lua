local M = {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufReadPre',
}

function M.config()
    vim.opt.list = true
    -- vim.opt.listchars:append 'space:⋅'
    vim.opt.listchars:append 'eol:↴'

    local nord = require 'nord.named_colors'
    vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = nord.red, nocombine = false })
    vim.api.nvim_set_hl(0, 'IndentBlanklineIndent1', { fg = nord.blue, nocombine = false })
    vim.api.nvim_set_hl(0, 'IndentBlanklineIndent2', { fg = nord.glacier, nocombine = false })
    vim.api.nvim_set_hl(0, 'IndentBlanklineIndent3', { fg = nord.off_blue, nocombine = false })
    vim.api.nvim_set_hl(0, 'IndentBlanklineIndent4', { fg = nord.teal, nocombine = false })
    vim.api.nvim_set_hl(0, 'IndentBlanklineIndent5', { fg = nord.green, nocombine = false })

    require('indent_blankline').setup {
        use_treesitter_scope = true,
        -- space_char_blankline = ' ',
        show_current_context = true,
        show_current_context_start = true,
        char_highlight_list = {
            'IndentBlanklineIndent1',
            'IndentBlanklineIndent2',
            'IndentBlanklineIndent3',
            'IndentBlanklineIndent4',
            'IndentBlanklineIndent5',
        },
    }
end

return M
