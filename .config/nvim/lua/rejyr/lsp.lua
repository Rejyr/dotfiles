-- lsp/mason
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
        'harper_ls',
        'html',
        'jdtls',
        'jsonls',
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'sqlls',
        'svelte',
        'texlab',
        'ts_ls',
    },
    automatic_enable = {
        exclude = {
            -- manage with rustaceanvim
            'rust_analyzer',
        },
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
        'taplo',
    },
}

vim.lsp.config('harper_ls', {
    settings = {
        ['harper-ls'] = {
            linters = {
                SentenceCapitalization = false,
                SpellCheck = false,
            },
        },
    },
})

vim.lsp.config('emmet_language_server', {
    filetypes = {
        'css',
        'eruby',
        'html',
        'javascript',
        'javascriptreact',
        'less',
        'sass',
        'scss',
        'pug',
        'typescriptreact',
        'rust', -- for leptos
    },
})

-- local lsp conf
vim.lsp.config('*', {
    before_init = function(_, config)
        local codesettings = require 'codesettings'
        codesettings.with_local_settings(config.name, config)
    end,
})
