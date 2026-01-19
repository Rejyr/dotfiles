---@diagnostic disable-next-line: undefined-global
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

-- colorscheme
now(function()
    add { source = 'neanias/everforest-nvim' }
    require('everforest').setup {
        background = 'medium',
    }
    vim.cmd 'colorscheme everforest'
    vim.cmd 'set background=dark'
end)

-- mini plugins
now(function()
    require('mini.files').setup()
end)
now(function()
    require('mini.icons').setup()
    require('mini.icons').mock_nvim_web_devicons()
end)
later(function()
    require('mini.ai').setup()
end)
later(function()
    require('mini.bracketed').setup()
end)
later(function()
    require('mini.comment').setup()
end)
later(function()
    require('mini.diff').setup()
end)
later(function()
    require('mini.extra').setup()
end)
later(function()
    require('mini.jump').setup()
end)
later(function()
    require('mini.notify').setup()
end)
later(function()
    require('mini.pairs').setup()
end)
later(function()
    require('mini.pick').setup()
end)
later(function()
    require('mini.surround').setup()
end)

later(function()
    local function timing(_, total)
        local ms = 100
        return ms / total
    end
    require('mini.animate').setup {
        cursor = {
            timing = timing,
        },
        scroll = {
            timing = timing,
        },
    }
end)
later(function()
    local hipatterns = require 'mini.hipatterns'
    hipatterns.setup {
        highlighters = {
            -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
            fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
            hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
            todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
            note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

            -- Highlight hex color strings (`#rrggbb`) using that color
            hex_color = hipatterns.gen_highlighter.hex_color(),
        },
    }
end)
later(function()
    require('mini.indentscope').setup {
        draw = {
            delay = 0,
            animation = require('mini.indentscope').gen_animation.none(),
        },
        symbol = '▎',
    }
end)
later(function()
    require('mini.jump2d').setup {
        view = {
            dim = true,
            n_steps_ahead = 1,
        },
        mappings = { start_jumping = '' },
    }
end)
later(function()
    local gen_loader = require('mini.snippets').gen_loader
    require('mini.snippets').setup {
        snippets = {
            gen_loader.from_lang(),
        },
    }
end)
now(function()
    local starter = require 'mini.starter'
    starter.setup {
        evaluate_single = true,
        footer = os.date(),
        items = {
            starter.sections.recent_files(5, false, false),
            starter.sections.builtin_actions(),
        },
    }
end)
now(function()
    require('mini.statusline').setup()
    vim.o.laststatus = 3
end)
later(function()
    require('mini.trailspace').setup()
    local augroup = vim.api.nvim_create_augroup('RemoveTrailingWhitespace', {})
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        callback = function()
            require('mini.trailspace').trim()
            require('mini.trailspace').trim_last_lines()
        end,
    })
end)

-- treesitter
now(function()
    add {
        source = 'nvim-treesitter/nvim-treesitter',
        hooks = {
            post_checkout = function()
                vim.cmd 'TSUpdate'
            end,
        },
    }
    require('nvim-treesitter.configs').setup {
        highlight = {
            enable = true,
            -- disable = { 'latex' },
            additional_vim_regex_highlighting = { 'latex' },
        },
        ensure_installed = {
            'bash',
            'c',
            'cmake',
            'cpp',
            'css',
            'fish',
            'gitignore',
            'go',
            'html',
            'java',
            'javascript',
            'json',
            'kdl',
            -- 'latex',
            'lua',
            'markdown',
            'markdown_inline',
            'python',
            'regex',
            'rust',
            'svelte',
            'toml',
            'typescript',
            'vim',
            'vimdoc',
            'yaml',
        },
    }
    add { source = 'HiPhish/rainbow-delimiters.nvim' }
    require('rainbow-delimiters.setup').setup {
        highlight = {
            'Red',
            'Yellow',
            'Blue',
            'Orange',
            'Green',
            'Violet',
            'Cyan',
        },
    }
end)

-- lsp/mason
now(function()
    add { source = 'neovim/nvim-lspconfig' }
    add {
        source = 'mason-org/mason.nvim',
        depends = {
            'neovim/nvim-lspconfig',
            'mason-org/mason-lspconfig.nvim',
            'WhoIsSethDaniel/mason-tool-installer.nvim',
        },
    }

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
end)

-- completion
now(function()
    add { source = 'saghen/blink.cmp', checkout = 'v1.7.0' }
    require('blink.cmp').setup {
        keymap = { preset = 'super-tab' },
        completion = {
            list = {
                selection = {
                    preselect = function(_)
                        return not require('blink.cmp').snippet_active { direction = 1 }
                    end,
                },
            },
            documentation = { auto_show = true },
            ghost_text = { enabled = true },
        },
        signature = { enabled = true },
        snippets = { preset = 'mini_snippets' },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    }
end)

-- formatter
later(function()
    add { source = 'stevearc/conform.nvim' }
    require('conform').setup {
        formatters_by_ft = {
            lua = { 'stylua' },
            rust = { 'rustfmt', lsp_format = 'fallback' },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = 'fallback',
        },
    }
end)

-- pickers
now(function()
    add { source = 'folke/snacks.nvim' }
    ---@diagnostic disable-next-line: undefined-global
    Snacks.setup {
        bigfile = { enabled = true },
        picker = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    }

    -- clipboard
    add { source = 'gbprod/yanky.nvim' }
    require('yanky').setup()
end)

-- diagonstic list
later(function()
    add { source = 'folke/trouble.nvim' }
    require('trouble').setup()
end)

-- git helper
now(function()
    add { source = 'tpope/vim-fugitive' }
end)

-- file jumping
now(function()
    add { source = 'otavioschwanck/arrow.nvim' }
    require('arrow').setup {
        show_icons = true,
        leader_key = '-', -- Recommended to be a single key
        buffer_leader_key = 'm', -- Per Buffer Mappings
    }
end)

-- better quickfix
later(function()
    add { source = 'stevearc/quicker.nvim' }
    require('quicker').setup()
end)
