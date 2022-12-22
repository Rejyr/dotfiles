return {
    { 'wakatime/vim-wakatime', event = 'VeryLazy' },
    'numToStr/FTerm.nvim',
    'folke/which-key.nvim',
    'DNLHC/glance.nvim',
    'folke/lsp-colors.nvim',
    'nvim-tree/nvim-web-devicons',
    'RRethy/nvim-base16',
    { 'shaunsingh/nord.nvim', lazy = false },
    { 'machakann/vim-highlightedyank', event = 'VeryLazy' },
    { 'alec-gibson/nvim-tetris', cmd = 'Tetris' },
    { 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' },
    { 'seandewar/nvimesweeper', cmd = 'Nvimesweeper' },
    {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufReadPost',
        dependencies = {
            'romgrk/nvim-treesitter-context',
            'p00f/nvim-ts-rainbow',
        },
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
                    'yaml',
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
            require('treesitter-context').setup()
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
        build = ':TSUpdate',
    },
    {
        'echasnovski/mini.nvim',
        branch = 'stable',
        event = 'VeryLazy',
        config = function()
            -- surround
            require('mini.surround').setup()
            -- auto-pair
            require('mini.pairs').setup()
            -- underline words
            require('mini.cursorword').setup()
            -- comment
            require('mini.comment').setup()
        end,
    },
    {
        'folke/drop.nvim',
        event = 'VimEnter',
        config = function()
            require('drop').setup {
                theme = 'snow',
            }
        end,
    },
    {
        'folke/noice.nvim',
        event = 'VeryLazy',
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
            require('notify').setup {
                background_colour = '#1a1b26',
            }
        end,
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            'MunifTanjim/nui.nvim',
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            'rcarriga/nvim-notify',
        },
    },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        config = function()
            require('dressing').setup()
        end,
    },
    {
        'norcalli/nvim-colorizer.lua',
        event = 'BufReadPre',
        config = function()
            require('colorizer').setup()
        end,
    },
    {
        'chentoast/marks.nvim',
        event = 'VeryLazy',
        config = function()
            require('marks').setup()
        end,
    },
    {
        'folke/todo-comments.nvim',
        cmd = { 'TodoTrouble', 'TodoTelescope' },
        event = 'BufReadPost',
        dependencies = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup()
        end,
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufReadPre',
        config = function()
            vim.opt.list = true
            -- vim.opt.listchars:append 'space:⋅'
            vim.opt.listchars:append 'eol:↴'

            local nord = require 'nord.named_colors'
            vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = nord.red, nocombine = false })
            vim.api.nvim_set_hl(0, 'IndentBlanklineIndent1', { fg = nord.blue, nocombine = false })
            vim.api.nvim_set_hl(0, 'IndentBlanklineIndent2', { fg = nord.glacier, nocombine = false })
            vim.api.nvim_set_hl(0, 'IndentBlanklineIndent3', { fg = nord.off_blue, nocombine = false })
            vim.api.nvim_set_hl(0, 'IndentBlanklineIndent4', { fg = nord.teal, nocombine = false })
            vim.api.nvim_set_hl(0, 'IndentBlanklineIndent5', { fg = nord.green, nocombine = false })

            require('indent_blankline').setup {
                use_treesitter_scope = true,
                -- space_char_blankline = ' ',
                show_current_context = true,
                show_current_context_start = true,
                char_highlight_list = {
                    'IndentBlanklineIndent1',
                    'IndentBlanklineIndent2',
                    'IndentBlanklineIndent3',
                    'IndentBlanklineIndent4',
                    'IndentBlanklineIndent5',
                },
            }
        end,
    },
    {
        'simrat39/symbols-outline.nvim',
        cmd = 'SymbolsOutline',
        config = function()
            require('symbols-outline').setup()
            vim.g.symbols_outline = {
                width = 50,
            }
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        cmd = {
            'NvimTreeToggle', 'NvimTreeClose', 'NvimTreeRefresh',
        },
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup()
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = 'BufReadPre',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('gitsigns').setup()
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-tree/nvim-web-devicons', 'cbochs/grapple.nvim' },
        config = function()
            require('lualine').setup {
                options = {
                    globalstatus = true,
                },
                sections = {
                    lualine_b = {
                        'branch',
                        {
                            function()
                                local key = require('grapple').key()
                                return '  [' .. key .. ']'
                            end,
                            cond = require('grapple').exists,
                        },
                        'diff',
                        'diagnostics',
                    },
                },
            }
        end,
    },
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        event = 'BufReadPre',
        config = function()
            require('bufferline').setup {
                options = {
                    diagnostics = 'nvim_lsp',
                    diagnostics_indicator = function(count, level, _, _)
                        local icon = level:match 'error' and ' ' or ' '
                        return ' ' .. icon .. count
                    end,
                    separator_style = 'thick',
                },
            }
        end,
    },
    {
        'karb94/neoscroll.nvim',
        keys = { '<C-u>', '<C-d>', 'gg', 'G' },
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
    },
    {
        'notjedi/nvim-rooter.lua',
        lazy = false,
        config = function()
            require('nvim-rooter').setup { manual = true }
        end,
    },
    {
        'Rejyr/root-switcher.nvim',
        -- '~/Programming/NeovimProjects/root-switcher.nvim',
        lazy = false,
        dependencies = { 'notjedi/nvim-rooter.lua' },
        config = function()
            require('root-switcher').setup {
                starting_mode = 'project',
                project_root = require('nvim-rooter').get_root,
            }
        end,
    },
    {
        'McAuleyPenney/tidy.nvim',
        event = 'BufWritePre',
    },
    {
        'andymass/vim-matchup',
        event = 'BufReadPost',
        config = function()
            require('nvim-treesitter.configs').setup {
                matchup = {
                    enable = true, -- mandatory, false will disable the whole extension
                },
            }
        end,
    },
    {
        'toppair/peek.nvim',
        cmd = { 'PeekOpen', 'PeekClose' },
        build = 'deno task --quiet build:fast',
        config = function()
            vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
            vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
        end,
    },
    {
        'lervag/vimtex',
        ft = 'tex',
        config = function()
            vim.g.tex_flavor = 'latex'
            vim.g.vimtex_view_method = 'sioyek'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.conceallevel = 1
            vim.g.tex_conceal = 'abdmg'
        end,
    },
    {
        'ethanholz/nvim-lastplace',
        event = 'BufReadPre',
        config = function()
            require('nvim-lastplace').setup()
        end,
    },
    {
        'rmagatti/auto-session',
        lazy = false,
        dependencies = { 'rmagatti/session-lens' },
        config = function()
            vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
            require('auto-session').setup {
                log_level = 'error',
                auto_session_suppress_dirs = { '~/', '~/Downloads', '/', '/tmp' },
                pre_save_cmds = { 'NvimTreeClose', 'cclose' },
                post_restore_cmds = { 'NvimTreeRefresh' },
            }
            require('session-lens').setup { theme_conf = { winblend = nil } }
        end,
    },
    {
        'cbochs/grapple.nvim',
        event = 'BufReadPre',
        config = function()
            local grapple = require 'grapple'
            grapple.setup {
                setup = require('grapple.scope').fallback {
                    grapple.resolvers.lsp_fallback,
                    grapple.resolvers.git_fallback,
                    grapple.resolvers.static,
                },
            }
        end,
    },
    {
        'AckslD/nvim-neoclip.lua',
        event = 'VeryLazy',
        dependencies = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension 'neoclip'
        end,
    },
    {
        'abecodes/tabout.nvim',
        branch = 'master',
        event = 'InsertEnter',
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
    },
    {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        nequires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('renamer').setup {}
        end,
    },
    {
        'mhartington/formatter.nvim',
        cmd = 'Format',
        config = function()
            -- keybind
            local util = require 'formatter.util'
            require('formatter').setup {
                filetype = {
                    css = {
                        function()
                            return {
                                exe = 'prettier',
                                args = {
                                    '--stdin-filepath',
                                    util.escape_path(util.get_current_buffer_file_path()),
                                },
                                stdin = true,
                                try_node_modules = true,
                            }
                        end,
                    },
                    lua = {
                        function()
                            return {
                                exe = 'stylua',
                                args = {
                                    '-s',
                                    '-',
                                },
                                stdin = true,
                            }
                        end,
                    },
                    python = {
                        function()
                            return {
                                exe = 'autopep8',
                                args = { '-' },
                                stdin = 1,
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
    },
    {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        event = 'VeryLazy',
        config = function()
            require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'kosayoda/nvim-lightbulb',
        event = 'BufReadPre',
        config = function()
            vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
        end,
    },
    {
        'folke/trouble.nvim',
        event = 'BufReadPre',
        cmd = { 'TroubleToggle', 'Trouble' },
        config = function()
            require('trouble').setup()
        end,
    },
    {
        'williamboman/mason.nvim',
        event = 'BufReadPre',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason-lspconfig.nvim',
            'WhoIsSethDaniel/mason-tool-installer.nvim',
        },
        config = function()
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
        end,
    },
    'neovim/nvim-lspconfig',
    {
        'klen/nvim-config-local',
        event = 'BufReadPre',
        config = function()
            require('config-local').setup {
                -- Default configuration (optional)
                config_files = { '.vimrc.lua', '.vimrc' }, -- Config file patterns to load (lua supported)
                hashfile = vim.fn.stdpath 'data' .. '/config-local', -- Where the plugin keeps files data
                autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
                commands_create = true, -- Create commands (ConfigSource, ConfigEdit, ConfigTrust, ConfigIgnore)
                silent = false, -- Disable plugin messages (Config loaded/ignored)
                lookup_parents = false, -- Lookup config files in parent directories
            }
        end,
    },
    {
        url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
        event = 'BufReadPre',
        config = function()
            local lsp_lines = require 'lsp_lines'
            lsp_lines.setup()
            vim.diagnostic.config {
                virtual_text = false,
            }
        end,
    },
    {
        'lvimuser/lsp-inlayhints.nvim',
        event = 'BufReadPre',
        config = function()
            require('lsp-inlayhints').setup()
            vim.api.nvim_create_augroup('LspAttach_inlayhints', {})
            vim.api.nvim_create_autocmd('LspAttach', {
                group = 'LspAttach_inlayhints',
                callback = function(args)
                    if not (args.data and args.data.client_id) then
                        return
                    end

                    local bufnr = args.buf
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    require('lsp-inlayhints').on_attach(client, bufnr)
                end,
            })
        end,
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'VimEnter',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-path', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-calc', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help', after = 'nvim-cmp' },
            { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' },
            { 'dmitmel/cmp-cmdline-history', after = 'nvim-cmp' },
            -- luasnip
            { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            vim.o.completeopt = 'menuone,noselect'
            local has_words_before = function()
                ---@diagnostic disable-next-line: deprecated
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
            end

            local cmp = require 'cmp'
            local luasnip = require 'luasnip'

            require('luasnip.loaders.from_lua').load { paths = '~/.config/nvim/lua/snippets' }
            luasnip.config.set_config {
                enable_autosnippets = true,
                store_selection_keys = '<Tab>',
            }

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
                    end,
                },
                completion = {
                    completeopt = 'menu,menuone,noinsert',
                },
                formatting = {
                    fields = { 'kind', 'abbr', 'menu' },
                    format = function(entry, vim_item)
                        vim_item.kind = (cmp_kinds[vim_item.kind] or '')
                        vim_item.menu = entry:get_completion_item().detail
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
                    -- { name = 'buffer' },
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
    },
    {
        'saecki/crates.nvim',
        event = { 'BufRead Cargo.toml' },
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    },
    {
        'simrat39/rust-tools.nvim',
        ft = 'rust',
        config = function()
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
        end,
    },
}
