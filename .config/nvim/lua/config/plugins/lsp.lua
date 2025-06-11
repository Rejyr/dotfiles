local lspconfig = {
    'neovim/nvim-lspconfig',
}

local mason = {
    'mason-org/mason.nvim',
    lazy = false,

    dependencies = {
        'neovim/nvim-lspconfig',
        'mason-org/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
}

function mason.config()
    require('mason').setup {
        providers = { 'mason.providers.client' },
    }
    require('mason-lspconfig').setup {
        ensure_installed = {
            'bashls',
            'clangd',
            'cssls',
            'emmet_language_server',
            'eslint',
            'grammarly',
            'html',
            'jdtls',
            'jsonls',
            'ltex',
            'lua_ls',
            'rust_analyzer',
            'sqlls',
            'svelte',
            'texlab',
            'ts_ls',
        },
    }

    require('mason-tool-installer').setup {
        ensure_installed = {
            'autopep8',
            'clang-format',
            'eslint_d',
            'prettier',
            'ruff',
            'stylua',
            'selene',
        },
    }

    -- diagnostic icons
    vim.diagnostic.config {
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = '',
                [vim.diagnostic.severity.WARN] = '',
                [vim.diagnostic.severity.INFO] = '',
                [vim.diagnostic.severity.HINT] = '',
            },
            active = true,
        },
        virtual_text = true,
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
            focusable = true,
            style = 'minimal',
            border = vim.g.border,
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

return { lspconfig, mason }
