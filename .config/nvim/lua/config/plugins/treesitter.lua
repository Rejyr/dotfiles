local M = {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPost',
    build = ':TSUpdate',

    dependencies = {
        'HiPhish/nvim-ts-rainbow2',
    },
}

function M.config()
    require('nvim-treesitter.configs').setup {
        highlight = {
            enable = true
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                node_incremental = '<CR>',
                scope_incremental = '<S-CR>',
                node_decremental = '<BS>',
            },
        },
        ensure_installed = {
            'bash',
            'c',
            'cmake',
            'cpp',
            'css',
            'fish',
            'gitignore',
            'go',
            'help',
            'html',
            -- 'java',
            -- 'javascript',
            'json',
            'latex',
            'lua',
            'markdown',
            'markdown_inline',
            'python',
            'regex',
            'rust',
            'toml',
            'typescript',
            'vim',
            'yaml',
        },
        rainbow = {
            enable = true,
            -- list of languages you want to disable the plugin for
            -- disable = { 'jsx', 'cpp' },
            -- Which query to use for finding delimiters
            query = 'rainbow-parens',
            -- Highlight the entire buffer all at once
            strategy = require 'ts-rainbow.strategy.global',
        },
    }
    vim.api.nvim_set_hl(0, 'TSRainbowRed', { link = 'Red' })
    vim.api.nvim_set_hl(0, 'TSRainbowOrange', { link = 'Orange' })
    vim.api.nvim_set_hl(0, 'TSRainbowYellow', { link = 'Yellow' })
    vim.api.nvim_set_hl(0, 'TSRainbowGreen', { link = 'Green' })
    vim.api.nvim_set_hl(0, 'TSRainbowBlue', { link = 'Blue' })
    vim.api.nvim_set_hl(0, 'TSRainbowCyan', { link = 'Aqua' })
    vim.api.nvim_set_hl(0, 'TSRainbowViolet', { link = 'Purple' })
end

return M
