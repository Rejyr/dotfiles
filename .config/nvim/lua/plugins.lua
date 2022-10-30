-- Install packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

return require('packer').startup(function(use)
    -- package manager - packer
    use 'wbthomason/packer.nvim'

    -- speed up loading time
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = {
                    'bash',
                    'c',
                    'cmake',
                    'cpp',
                    'css',
                    'fish',
                    'gitignore',
                    'go',
                    'help',
                    'html',
                    -- 'java',
                    -- 'javascript',
                    'json',
                    'latex',
                    'lua',
                    'markdown',
                    'markdown_inline',
                    'python',
                    'regex',
                    'rust',
                    'toml',
                    'typescript',
                    'vim',
                    -- 'yaml'
                },
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil, -- Do not enable for files with more than n lines, int
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                },
            }
        end,
        run = ':TSUpdate',
    }

    -- tetris lmao
    use 'alec-gibson/nvim-tetris'

    -- time tracking
    use 'wakatime/vim-wakatime'

    -- mini
    use {
        'echasnovski/mini.nvim',
        branch = 'stable',
        config = function()
            -- surround
            require('mini.surround').setup()
            -- starting screen
            require('mini.starter').setup()
        end,
    }

    --
    --
    -- GUI
    --
    --

    -- pretty stuff
    use {
        'folke/noice.nvim',
        event = 'VimEnter',
        config = function()
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
        end,
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            'MunifTanjim/nui.nvim',
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            'rcarriga/nvim-notify',
        },
    }

    -- highlight colors
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    }

    -- fold code
    use {
        'kevinhwang91/nvim-ufo',
        requires = 'kevinhwang91/promise-async',
        config = function()
            vim.wo.foldcolumn = '1'
            vim.wo.foldlevel = 99 -- feel free to decrease the value
            vim.wo.foldenable = true

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true,
            }
        end,
    }

    -- display marks
    use 'kshenoy/vim-signature'

    -- todo comment
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup()
            vim.keymap.set('n', '<leader>tq', '<cmd>TodoQuickFix<cr>', { silent = true })
            vim.keymap.set('n', '<leader>tt', '<cmd>TodoTrouble<cr>', { silent = true })
            vim.keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>', { silent = true })
        end,
    }

    -- which key for commands
    use {
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup()
            vim.opt.timeoutlen = 500
        end,
    }

    -- show indent
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            vim.opt.list = true
            -- vim.opt.listchars:append 'space:⋅'
            vim.opt.listchars:append 'eol:↴'

            require('indent_blankline').setup {
                -- space_char_blankline = ' ',
                show_current_context = true,
                show_current_context_start = true,
            }
        end,
    }

    -- function signature context
    use {
        'romgrk/nvim-treesitter-context',
        requires = {
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('treesitter-context').setup()
        end,
    }

    -- tree view for symbols
    use {
        'simrat39/symbols-outline.nvim',
        config = function()
            require('symbols-outline').setup()
            vim.g.symbols_outline = {
                width = 50,
            }
            vim.keymap.set('n', '<leader>so', '<cmd>SymbolsOutline<cr>', { silent = true })
        end,
    }

    -- floating terminal
    use {
        'numToStr/FTerm.nvim',
        config = function()
            vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
            vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
        end,
    }

    -- CHAD filesystem
    use {
        'ms-jpq/chadtree',
        branch = 'chad',
        run = 'python3 -m chadtree deps',
        config = function()
            vim.keymap.set('n', '<Leader>v', '<cmd>CHADopen<CR>', { silent = true })
        end,
    }

    --
    -- git
    --

    -- use {
    -- 	'tanvirtin/vgit.nvim',
    -- 	event = 'BufWinEnter',
    -- 	requires = {
    -- 		'nvim-lua/plenary.nvim',
    -- 	},
    -- 	config = function()
    -- 		require('vgit').setup()
    -- 	end,
    -- }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('gitsigns').setup()
        end,
        -- tag = 'release' -- To use the latest release
    }
    use {
        'sindrets/diffview.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    --
    -- tab/status lines
    --
    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                options = {
                    globalstatus = true,
                },
            }
        end,
    }
    -- use {
    -- 	'feline-nvim/feline.nvim',
    -- 	config = function()
    -- 		require('feline').setup {}
    -- 	end,
    -- }

    -- tabline
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('bufferline').setup {}

            -- keybinds
            vim.keymap.set('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', { silent = true })
            vim.keymap.set('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', { silent = true })
        end,
    }

    --
    --
    -- Color
    --
    --

    -- compatibility
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'folke/lsp-colors.nvim'

    -- icons
    use 'ryanoasis/vim-devicons'
    use 'adelarsq/vim-devicons-emoji'
    use 'adelarsq/vim-emoji-icon-theme'
    use 'kyazdani42/nvim-web-devicons'

    -- colorschemes
    -- use 'RRethy/nvim-base16'
    use 'shaunsingh/nord.nvim'
    -- use 'folke/tokyonight.nvim'
    -- use 'rebelot/kanagawa.nvim'
    -- use 'catppuccin/nvim'

    --
    --
    -- eye candy
    --
    --
    -- smooth scrolling
    use {
        'karb94/neoscroll.nvim',
        config = function()
            require('neoscroll').setup()
            local t = {}
            -- Syntax: t[keys] = {function, {function arguments}}
            t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '80' } }
            t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '80' } }
            t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '250' } }
            t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250' } }
            t['<C-y>'] = { 'scroll', { '-0.10', 'false', '80' } }
            t['<C-e>'] = { 'scroll', { '0.10', 'false', '80' } }
            t['zt'] = { 'zt', { '150' } }
            t['zz'] = { 'zz', { '150' } }
            t['zb'] = { 'zb', { '150' } }

            require('neoscroll.config').set_mappings(t)
        end,
    }

    -- transparent neovim
    use {
        'xiyaowong/nvim-transparent',
        disable = true,
        config = function()
            require('transparent').setup {
                enable = true,
                exclude = {
                    SignColumn,
                },
            }
        end,
    }

    -- rainbow parentheses
    use {
        'p00f/nvim-ts-rainbow',
        requires = {
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('nvim-treesitter.configs').setup {
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil, -- Do not enable for files with more than n lines, int
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                },
            }
        end,
    }

    --
    -- highlight
    --
    -- highlight yank
    use 'machakann/vim-highlightedyank'

    -- highlight range in command
    use 'winston0410/cmd-parser.nvim'

    -- underline words/lines on cursor
    use 'yamatsum/nvim-cursorline'

    --
    --
    -- Editor
    --
    --
    -- move to directory
    use 'airblade/vim-rooter'

    -- autosave
    -- use 'Pocco81/auto-save.nvim'

    -- tidy whitespace
    use {
        'McAuleyPenney/tidy.nvim',
        event = 'BufWritePre',
    }

    -- jump to matching character
    use {
        'andymass/vim-matchup',
        config = function()
            require('nvim-treesitter.configs').setup {
                matchup = {
                    enable = true, -- mandatory, false will disable the whole extension
                    disable = { 'c', 'ruby' }, -- optional, list of language that will be disabled
                    -- [options]
                },
            }
        end,
    }

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }

    -- auto-pair
    use 'jiangmiao/auto-pairs'

    -- browser markdown preview
    use 'davidgranstrom/nvim-markdown-preview'

    -- latex preview
    use {
        'frabjous/knap',
        config = function()
            -- set shorter name for keymap function
            local kmap = vim.keymap.set

            -- F5 processes the document once, and refreshes the view
            kmap('i', '<F5>', function()
                require('knap').process_once()
            end)
            kmap('v', '<F5>', function()
                require('knap').process_once()
            end)
            kmap('n', '<F5>', function()
                require('knap').process_once()
            end)

            -- F6 closes the viewer application, and allows settings to be reset
            kmap('i', '<F6>', function()
                require('knap').close_viewer()
            end)
            kmap('v', '<F6>', function()
                require('knap').close_viewer()
            end)
            kmap('n', '<F6>', function()
                require('knap').close_viewer()
            end)

            -- F7 toggles the auto-processing on and off
            kmap('i', '<F7>', function()
                require('knap').toggle_autopreviewing()
            end)
            kmap('v', '<F7>', function()
                require('knap').toggle_autopreviewing()
            end)
            kmap('n', '<F7>', function()
                require('knap').toggle_autopreviewing()
            end)

            -- F8 invokes a SyncTeX forward search, or similar, where appropriate
            kmap('i', '<F8>', function()
                require('knap').forward_jump()
            end)
            kmap('v', '<F8>', function()
                require('knap').forward_jump()
            end)
            kmap('n', '<F8>', function()
                require('knap').forward_jump()
            end)
        end,
    }

    -- latex editing
    use {
        'lervag/vimtex',
        config = function()
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_view_method = 'sioyek'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.conceallevel = 1
            vim.g.tex_conceal = 'abdmg'
        end,
    }

    -- open file at last place
    use {
        'ethanholz/nvim-lastplace',
        config = function()
            require('nvim-lastplace').setup()
        end,
    }

    -- session management
    use {
        'Shatur/neovim-session-manager',
        requires = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    }

    -- better registers
    use {
        'AckslD/nvim-neoclip.lua',
        requires = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension 'neoclip'
            vim.keymap.set('n', '<leader>c', '<cmd>Telescope neoclip<cr>', { silent = true })
        end,
    }

    -- tabout
    use {
        'abecodes/tabout.nvim',
        branch = 'master',
        config = function()
            require('tabout').setup {
                tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
                backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
                act_as_tab = true, -- shift content if tab out is not possible
                act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
                enable_backwards = true, -- well ...
                completion = true, -- if the tabkey is used in a completion pum
                tabouts = {
                    { open = "'", close = "'" },
                    { open = '"', close = '"' },
                    { open = '`', close = '`' },
                    { open = '(', close = ')' },
                    { open = '[', close = ']' },
                    { open = '{', close = '}' },
                },
                ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
                exclude = {}, -- tabout will ignore these filetypes
            }
        end,
        wants = { 'nvim-treesitter' }, -- or require if not used so far
        after = { 'nvim-cmp' }, -- if a completion plugin is using tabs load it before
    }

    -- vscode ui style renamer
    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        nequires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('renamer').setup {
                vim.keymap.set('i', '<F2>', function()
                    require('renamer').rename()
                end, { silent = true }),
                vim.keymap.set({ 'n', 'v' }, '<leader>rn', function()
                    require('renamer').rename()
                end),
            }
        end,
    }

    -- Formmater
    use {
        'mhartington/formatter.nvim',
        config = function()
            -- keybind
            vim.keymap.set('n', '<Leader>f', [[<cmd>Format<CR>]], { silent = true })
            require('formatter').setup {
                filetype = {
                    lua = {
                        function()
                            return {
                                exe = 'stylua',
                                args = {
                                    '--config-path ' .. os.getenv 'HOME' .. '/.config/stylua/stylua.toml',
                                    '-',
                                },
                                stdin = true,
                            }
                        end,
                    },
                    rust = {
                        -- Rustfmt
                        function()
                            return {
                                exe = 'rustfmt',
                                args = { '--emit=stdout', '--edition=2021' },
                                stdin = true,
                            }
                        end,
                    },
                },
            }
        end,
    }

    -- movement
    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        config = function()
            require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
            -- keybinds
            vim.keymap.set('n', '<leader>jw', '<cmd>HopWord<cr>', { silent = true })
            vim.keymap.set('n', '<leader>jp', '<cmd>HopPattern<cr>', { silent = true })
            vim.keymap.set('n', '<leader>j2', '<cmd>HopChar2<cr>', { silent = true })
            vim.keymap.set('n', '<leader>j', '<cmd>HopChar1<cr>', { silent = true })
            vim.keymap.set('n', '<leader>jl', '<cmd>HopLine<cr>', { silent = true })
        end,
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { silent = true })
            vim.keymap.set('n', '<leader>ffh', '<cmd>Telescope find_files hidden=true<cr>', { silent = true })
            vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { silent = true })
            vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { silent = true })
            vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { silent = true })
        end,
    }

    -- debugging
    use {
        'mfussenegger/nvim-dap',
        requires = {
            'rcarriga/nvim-dap-ui',
            'Pocco81/DAPInstall.nvim',
            'theHamsta/nvim-dap-virtual-text',
            'nvim-telescope/telescope-dap.nvim',
            'theHamsta/nvim-dap-virtual-text',
        },
        config = function()
            require('telescope').load_extension 'dap'

            local dap = require 'dap'

            dap.adapters.lldb = {
                type = 'executable',
                attach = { pidProperty = 'pid', pidSelect = 'ask' },
                command = 'lldb-vscode',
                name = 'lldb',
                env = { LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = 'YES' },
            }

            dap.configurations.cpp = {
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

                    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
                    --
                    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
                    --
                    -- Otherwise you might get the following error:
                    --
                    --    Error on launch: Failed to attach to the target process
                    --
                    -- But you should be aware of the implications:
                    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
                    runInTerminal = false,

                    -- 💀
                    -- If you use `runInTerminal = true` and resize the terminal window,
                    -- lldb-vscode will receive a `SIGWINCH` signal which can cause problems
                    -- To avoid that uncomment the following option
                    -- See https://github.com/mfussenegger/nvim-dap/issues/236#issuecomment-1066306073
                    postRunCommands = { 'process handle -p true -s false -n false SIGWINCH' },
                },
            }

            dap.configurations.c = dap.configurations.cpp
            dap.configurations.rust = dap.configurations.cpp

            vim.keymap.set('n', '<F4>', function()
                require('dapui').toggle()
            end, { silent = true })
            vim.keymap.set('n', '<F5>', function()
                require('dap').toggle_breakpoint()
            end, { silent = true })
            vim.keymap.set('n', '<F9>', function()
                require('dap').continue()
            end, { silent = true })

            vim.keymap.set('n', '<F1>', function()
                require('dap').step_over()
            end, { silent = true })
            vim.keymap.set('n', '<F2>', function()
                require('dap').step_into()
            end, { silent = true })
            vim.keymap.set('n', '<F3>', function()
                require('dap').step_out()
            end, { silent = true })

            vim.keymap.set('n', '<Leader>dsc', function()
                require('dap').continue()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>dsv', function()
                require('dap').step_over()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>dsi', function()
                require('dap').step_into()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>dso', function()
                require('dap').step_out()
            end, { silent = true })

            vim.keymap.set('n', '<Leader>dhh', function()
                require('dap.ui.variables').hover()
            end, { silent = true })
            vim.keymap.set('v', '<Leader>dhv', function()
                require('dap.ui.variables').visual_hover()
            end, { silent = true })

            vim.keymap.set('n', '<Leader>duh', function()
                require('dap.ui.widgets').hover()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>duf', function()
                local widgets = require 'dap.ui.widgets'
                widgets.centered_float(widgets.scopes)
            end, { silent = true })

            vim.keymap.set('n', '<Leader>dro', function()
                require('dap').repl.open()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>drl', function()
                require('dap').repl.run_last()
            end, { silent = true })

            vim.keymap.set('n', '<Leader>dbc', function()
                require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
            end, { silent = true })
            vim.keymap.set('n', '<Leader>dbm', function()
                require('dap').set_breakpoint { nil, nil, vim.fn.input 'Log point message: ' }
            end, { silent = true })
            vim.keymap.set('n', '<Leader>dbt', function()
                require('dap').toggle_breakpoint()
            end, { silent = true })

            vim.keymap.set('n', '<Leader>dc', function()
                require('dap.ui.variables').scopes()
            end, { silent = true })
            vim.keymap.set('n', '<Leader>di', function()
                require('dapui').toggle()
            end, { silent = true })
        end,
    }

    use {
        'nvim-neotest/neotest',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-treesitter/nvim-treesitter',
            'antoinemadec/FixCursorHold.nvim',
        },
    }

    --
    --
    -- lsp/language
    --
    --
    -- lightbulb for code actions
    use {
        'kosayoda/nvim-lightbulb',
        config = function()
            vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
        end,
    }

    -- show diagnosticsc / lsp stuff
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>', { silent = true })
            require('trouble').setup()
        end,
    }

    -- spellcheck
    use {
        'lewis6991/spellsitter.nvim',
        config = function()
            require('spellsitter').setup()
        end,
    }

    -- show function signature
    -- use {
    --     'ray-x/lsp_signature.nvim',
    --     config = function()
    --         require('lsp_signature').setup()
    --     end,
    -- }

    -- fish editing
    use 'dag/vim-fish'

    -- install lsp servers
    use {
        'williamboman/nvim-lsp-installer',
        requires = { 'neovim/nvim-lspconfig' },
        config = function()
            require('nvim-lsp-installer').setup {}
            local lsp_installer = require 'nvim-lsp-installer'
            local servers = {
                'clangd',
                'cssls',
                'grammarly',
                'html',
                'ltex',
                'pyright',
                'rust_analyzer',
                'sumneko_lua',
                'tailwindcss',
            }

            -- install servers
            for _, name in pairs(servers) do
                local server_is_found, server = lsp_installer.get_server(name)
                if server_is_found then
                    if not server:is_installed() then
                        print('Installing ' .. name)
                        server:install()
                        print('Installed ' .. name)
                    end
                end
            end

            local lspconfig = require 'lspconfig'
            lspconfig.clangd.setup {}
            lspconfig.cssls.setup {}
            lspconfig.grammarly.setup {}
            lspconfig.html.setup {}
            lspconfig.ltex.setup {}
            lspconfig.pyright.setup {}
            lspconfig.sumneko_lua.setup {}
            lspconfig.tailwindcss.setup {}
            lspconfig.rust_analyzer.setup {
                on_attach = function(client)
                    local path = client.workspace_folders[1].name

                    if path == os.getenv 'HOME' .. 'rust' then
                        local rust_analyzer = client.config.settings['rust-analyzer']
                        rust_analyzer.checkOnSave.overrideCommand = { 'x', 'check', '--json-output' }
                        rust_analyzer.rustfmt.overrideCommand =
                            { './build/x86_64-unknown-linux-gnu/stage0/bin/rustfmt', '--edition=2021' }
                        rust_analyzer.procMacro.enable = true
                        rust_analyzer.cargo.buildScripts.enable = true
                        rust_analyzer.cargo.buildScripts.overrideCommand = { 'x', 'check', '--json-output' }
                        rust_analyzer.rustc.source = './Cargo.toml'
                    end

                    client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
                    return true
                end,
                settings = {
                    checkOnSave = { overrideCommand = {} },
                    rustfmt = { overrideCommand = {} },
                    procMacro = { enable = false },
                    cargo = { buildScripts = { enable = false, overrideCommand = {} } },
                    rustc = { source = '' },
                    ['rust-analyzer'] = {
                        linkedProjects = '~/Programming/Competitive/GoogleKickStart/rust-project.json',
                    },
                },
            }
        end,
    }

    -- Collection of common configurations for the Nvim LSP client
    use {
        'neovim/nvim-lspconfig',
        config = function()
            -- keybinds
            vim.keymap.set('n', '<c-j>', vim.lsp.buf.definition, { silent = true })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true })
            vim.keymap.set('n', 'gD', vim.lsp.buf.implementation, { silent = true })
            vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, { silent = true })
            vim.keymap.set('n', 'gD', vim.lsp.buf.type_definition, { silent = true })
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true })
            vim.keymap.set('n', 'g0', vim.lsp.buf.document_symbol, { silent = true })
            vim.keymap.set('n', 'gW', vim.lsp.buf.workspace_symbol, { silent = true })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true })
            vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, { silent = true })
            vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, { silent = true })
            vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, { silent = true })
        end,
    }

    -- Autocompletion framework
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-cmdline',
            'dmitmel/cmp-cmdline-history',
            -- luasnip
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'onsails/lspkind.nvim',
        },
        config = function()
            vim.o.completeopt = 'menuone,noselect'
            local has_words_before = function()
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
            end

            local cmp = require 'cmp'
            local luasnip = require 'luasnip'
            local cmp_kinds = {
                Text = '  ',
                Method = '  ',
                Function = '  ',
                Constructor = '  ',
                Field = '  ',
                Variable = '  ',
                Class = '  ',
                Interface = '  ',
                Module = '  ',
                Property = '  ',
                Unit = '  ',
                Value = '  ',
                Enum = '  ',
                Keyword = '  ',
                Snippet = '  ',
                Color = '  ',
                File = '  ',
                Reference = '  ',
                Folder = '  ',
                EnumMember = '  ',
                Constant = '  ',
                Struct = '  ',
                Event = '  ',
                Operator = '  ',
                TypeParameter = '  ',
            }
            cmp.setup {
                snippet = {
                    expand = function(args)
                        -- luasnip
                        require('luasnip').lsp_expand(args.body)
                        -- ultisnips
                        -- vim.fn['UltiSnips#Anon'](args.body)
                    end,
                },
                completion = {
                    completeopt = 'menu,menuone,noinsert',
                },
                formatting = {
                    format = function(_, vim_item)
                        vim_item.kind = (cmp_kinds[vim_item.kind] or '') .. vim_item.kind
                        return vim_item
                    end,
                },
                mapping = {
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    -- Add tab support
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),

                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.close(),
                    ['<CR>'] = cmp.mapping.confirm {
                        behavior = cmp.ConfirmBehavior.Insert,
                        select = true,
                    },
                },
                -- Installed sources
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'nvim_lua' },
                    { name = 'luasnip' },
                    { name = 'path' },
                    { name = 'buffer' },
                    { name = 'calc' },
                    { name = 'crates' },
                    { name = 'nvim_lsp_signature_help' },
                },
            }

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources {
                    { name = 'noice_popupmenu' },
                    { name = 'path' },
                    { name = 'cmdline' },
                    { name = 'cmdline_history' },
                },
            })
        end,
    }

    --
    -- Rust
    --

    -- help manage rust depedencies
    use {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    -- Adds extra functionality over rust analyzer
    use {
        'simrat39/rust-tools.nvim',
        requires = { 'neovim/nvim-lspconfig' },
        ft = 'rust',
        config = function()
            vim.keymap.set('n', '<leader>rr', '<cmd>RustRun<cr>')
            vim.keymap.set('n', '<leader>rrr', '<cmd>RustRunnables<cr>')
            --
            require('rust-tools').setup {
                {
                    tools = {
                        autoSetHints = true,
                        hover_with_actions = true,
                        runnables = {
                            use_telescope = true,
                        },
                        inlay_hints = {
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
        end,
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
