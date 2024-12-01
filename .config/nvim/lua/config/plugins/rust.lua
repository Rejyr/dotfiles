local rustacean = {
    'mrcjkb/rustaceanvim',
    ft = 'rust',
}

function rustacean.config()
    vim.g.rustacean = {
        tools = {
            runnables = {
                use_telescope = true,
            },
            inlay_hints = {
                auto = false,
            },
        },

        -- all the opts to send to nvim-lspconfig
        -- these override the defaults set by rust-tools.nvim
        -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
        server = {
            standalone = true,
            settings = {
                ['rust-analyzer'] = {
                    -- enable clippy on save
                    check = {
                        command = 'clippy',
                    },
                    inlayHints = { locationLinks = false },

                    -- linkedProjects = {
                    --     [[{"sysroot_src": "/home/rejyr/.rustup/toolchains/1.41.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"}]],
                    -- },
                },
            },
        },
    }
end

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
