local M = {
    'williamboman/mason.nvim',
    event = 'BufReadPre',

    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
}

function M.config()
    require('mason').setup {
        providers = { 'mason.providers.client' },
    }
    require('mason-lspconfig').setup {
        ensure_installed = {
            'bashls',
            'clangd',
            'cssls',
            'grammarly',
            'html',
            'jsonls',
            'ltex',
            'pyright',
            'rust_analyzer',
            'sumneko_lua',
            'texlab',
        },
        automatic_installation = true,
    }
    require('mason-lspconfig').setup_handlers {
        function(server_name)
            require('lspconfig')[server_name].setup {}
        end,
        ['sumneko_lua'] = function()
            require('lspconfig').sumneko_lua.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = { 'vim' },
                        },
                    },
                },
            }
        end,
    }

    require('mason-tool-installer').setup {
        ensure_installed = {
            'autopep8',
            'prettier',
            'stylua',
            'selene',
        },
    }
end

return M
