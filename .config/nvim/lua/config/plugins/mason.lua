local M = {
    'williamboman/mason.nvim',
    lazy = false,

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
            'emmet_ls',
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
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    ---@diagnostic disable-next-line: unused-local
    local on_attach = function(client, bufnr) end
    require('mason-lspconfig').setup_handlers {
        function(server_name)
            require('lspconfig')[server_name].setup {
                capabilities = capabilities,
                on_attach = on_attach,
            }
        end,
        ['sumneko_lua'] = function()
            require('lspconfig').sumneko_lua.setup {
                capabilities = capabilities,
                on_attach = on_attach,
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
            'clang-format',
            'prettier',
            'stylua',
            'selene',
        },
    }
end

return M
