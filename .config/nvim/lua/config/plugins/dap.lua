local M = {
    'mfussenegger/nvim-dap',
    event = 'VeryLazy',

    dependencies = {
        'nvim-neotest/nvim-nio',
        'rcarriga/nvim-dap-ui',
        'theHamsta/nvim-dap-virtual-text',
    },
}

function M.config()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('nvim-dap-virtual-text').setup()

    dapui.setup {
        icons = { expanded = '▾', collapsed = '▸' },
        mappings = {
            open = 'o',
            remove = 'd',
            edit = 'e',
            repl = 'r',
            toggle = 't',
        },
        expand_lines = vim.fn.has 'nvim-0.7',
        layouts = {
            {
                elements = {
                    'scopes',
                },
                size = 0.3,
                position = 'right',
            },
            {
                elements = {
                    'repl',
                    'breakpoints',
                },
                size = 0.3,
                position = 'bottom',
            },
        },
        floating = {
            max_height = nil,
            max_width = nil,
            border = 'single',
            mappings = {
                close = { 'q', '<Esc>' },
            },
        },
        windows = { indent = 1 },
        render = {
            max_type_length = nil,
        },
    }
    vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'Red' })
    vim.fn.sign_define('DapBreakpointCondition', { text = '', texthl = 'Red' })
    vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'Red' })
    vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'Red' })
    vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'Orange' })

    dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
        name = 'lldb',
    }
    dap.configurations = {
        cpp = {
            {
                name = 'Launch',
                type = 'lldb',
                request = 'launch',
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                args = {},
            },
        },
    }
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
end

return M
