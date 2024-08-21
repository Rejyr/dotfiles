local ts = {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPost',
    build = ':TSUpdate',
}

function ts.config()
    require('nvim-treesitter.configs').setup {
        highlight = {
            enable = true,
            -- disable = { 'latex' },
            additional_vim_regex_highlighting = { 'latex' },
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
            'html',
            'java',
            'javascript',
            'json',
            'kdl',
            'latex',
            'lua',
            'markdown',
            'markdown_inline',
            'python',
            'regex',
            'rust',
            'svelte',
            'toml',
            'typescript',
            'vim',
            'vimdoc',
            'yaml',
        },
    }
end

local rainbow = {
    'HiPhish/rainbow-delimiters.nvim',
    event = 'BufReadPost',
    config = function()
        vim.api.nvim_set_hl(0, 'RainbowDelimeterRed', { link = 'Red' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterOrange', { link = 'Orange' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterYellow', { link = 'Yellow' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterGreen', { link = 'Green' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterBlue', { link = 'Blue' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterCyan', { link = 'Aqua' })
        vim.api.nvim_set_hl(0, 'RainbowDelimeterViolet', { link = 'Purple' })
    end,
}

return { ts, rainbow }
