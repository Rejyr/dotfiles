local rustacean = {
    'mrcjkb/rustaceanvim',
    ft = 'rust',
}

vim.g.rustaceanvim = {
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = false,
        },
    },
    server = {
        standalone = true,
        default_settings = {
            ['rust-analyzer'] = {
                check = {
                    command = 'clippy',
                },
                inlayHints = { locationLinks = false },
                diagnostic = {
                    refreshSupport = false,
                },
                cargo = {
                    features = 'all',
                },
                procMacro = {
                    ignored = {
                        leptos_macro = {
                            'server',
                        },
                    },
                },
            },
        },
    },
}

local crates = {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        completion = {
            cmp = {
                enabled = true,
            },
        },
    },
}

return { rustacean, crates }
