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
            'lua_ls',
            'ruff_lsp',
            'rust_analyzer',
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
        ['lua_ls'] = function()
            require('lspconfig').lua_ls.setup {
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    ['lua_ls'] = {
                        Lua = {
                            diagnostics = {
                                -- Get the language server to recognize the `vim` global
                                globals = { 'vim' },
                            },
                        },
                    },
                },
            }
        end,
        ['ltex'] = function()
            require('lspconfig').ltex.setup {
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    ['ltex'] = {
                        ltex = {
                            checkFrequency = 'save',
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

    -- diagnostic icons
    vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
    vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
    vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
    vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
    vim.diagnostic.config {
        signs = {
            active = true,
        },
        virtual_text = true,
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
            focusable = true,
            style = 'minimal',
            border = 'rounded',
            source = 'always',
            header = '',
            prefix = '',
            format = function(d)
                local code = d.code or (d.user_data and d.user_data.lsp.code)
                if code then
                    return string.format('%s [%s]', d.message, code):gsub('1. ', '')
                end
                return d.message
            end,
        },
    }
end

return M
