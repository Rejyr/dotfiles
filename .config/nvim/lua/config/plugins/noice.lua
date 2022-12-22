local M = {
    'folke/noice.nvim',
    event = 'VeryLazy',

    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        'MunifTanjim/nui.nvim',
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        'rcarriga/nvim-notify',
    },
}

function M.config()
    require('noice').setup {
        lsp = {
            override = {
                ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                ['vim.lsp.util.stylize_markdown'] = true,
                ['cmp.entry.get_documentation'] = true,
                ['vim.lsp.handlers["textDocument/signatureHelp"]'] = false,
            },
        },
        views = {
            cmdline_popup = {
                position = {
                    row = 15,
                    col = '50%',
                },
                size = {
                    width = 80,
                    height = 'auto',
                },
            },
            popupmenu = {
                relative = 'editor',
                position = {
                    row = 18,
                    col = '50%',
                },
                size = {
                    width = 80,
                    height = 10,
                },
                border = {
                    style = 'rounded',
                    padding = { 0, 1 },
                },
                win_options = {
                    winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
                },
            },
        },
    }
    require('telescope').load_extension 'noice'
    require('notify').setup {
        background_colour = '#1a1b26',
    }
end

return M
