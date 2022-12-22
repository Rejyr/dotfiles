local M = {
    'simrat39/rust-tools.nvim',
    ft = 'rust',
}

function M.config()
    require('rust-tools').setup {
        {
            tools = {
                autoSetHints = true,
                hover_with_actions = true,
                runnables = {
                    use_telescope = true,
                },
                inlay_hints = {
                    auto = false,
                    show_parameter_hints = false,
                    parameter_hints_prefix = '',
                    other_hints_prefix = '',
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
                        checkOnSave = {
                            command = 'clippy',
                        },

                        -- linkedProjects = {
                        --     [[{"sysroot_src": "/home/rejyr/.rustup/toolchains/1.41.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"}]],
                        -- },
                    },
                },
            },
        },
    }
end

return M
