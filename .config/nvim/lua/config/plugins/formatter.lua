local M = {
    'mhartington/formatter.nvim',
    cmd = 'Format',
}

function M.config()
    local util = require 'formatter.util'
    require('formatter').setup {
        filetype = {
            cpp = {
                function()
                    return {
                        exe = 'clang-format',
                        args = {
                            '-assume-filename',
                            util.escape_path(util.get_current_buffer_file_name()),
                        },
                        stdin = true,
                        try_node_modules = true,
                    }
                end,
            },
            css = {
                function()
                    return {
                        exe = 'prettier',
                        args = {
                            '--stdin-filepath',
                            util.escape_path(util.get_current_buffer_file_path()),
                        },
                        stdin = true,
                        try_node_modules = true,
                    }
                end,
            },
            lua = {
                function()
                    return {
                        exe = 'stylua',
                        args = {
                            '-s',
                            '-',
                        },
                        stdin = true,
                    }
                end,
            },
            python = {
                function()
                    return {
                        exe = 'autopep8',
                        args = { '-' },
                        stdin = 1,
                    }
                end,
            },
            rust = {
                -- Rustfmt
                function()
                    return {
                        exe = 'rustfmt',
                        args = { '--emit=stdout', '--edition=2021' },
                        stdin = true,
                    }
                end,
            },
        },
    }
end

return M
