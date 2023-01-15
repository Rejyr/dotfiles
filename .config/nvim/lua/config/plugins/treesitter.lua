local M = {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPost',
    build = ':TSUpdate',

    dependencies = {
        'romgrk/nvim-treesitter-context',
        'p00f/nvim-ts-rainbow',
    },
}

function M.config()
    require('nvim-treesitter.configs').setup {
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
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
    }
    require('treesitter-context').setup()
    require('nvim-treesitter.configs').setup {
        rainbow = {
            enable = true,
            -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            max_file_lines = nil, -- Do not enable for files with more than n lines, int
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
    }
end

return M
