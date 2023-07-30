local M = {
    'mhartington/formatter.nvim',
    cmd = 'Format',
}

function M.config()
    local util = require('formatter.util')
    require('formatter').setup {
        filetype = {
            cpp = {
                require('formatter.filetypes.cpp').clangformat,
            },
            css = {
                require('formatter.filetypes.css').prettier,
            },
            javascript = {
                require('formatter.filetypes.javascript').prettier,
            },
            json = {
                require('formatter.filetypes.json').prettier
            },
            lua = {
                require('formatter.filetypes.lua').stylua,
            },
            python = {
                require('formatter.filetypes.python').autopep8,
            },
            rust = {
                require('formatter.filetypes.rust').rustfmt,
            },
            svelte = {
                function()
                    return {
                        exe = 'npx',
                        args = {
                            'prettier',
                            '--stdin-filepath',
                            util.escape_path(util.get_current_buffer_file_path()),
                        },
                        stdin = true,
                        try_node_modules = true,
                    }
                end,
            },
            typescript = {
                require('formatter.filetypes.typescript').prettier,
            },
        },
    }
end

return M
