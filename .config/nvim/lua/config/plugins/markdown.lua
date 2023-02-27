return {
    { 'jghauser/follow-md-links.nvim', ft = 'markdown' },
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
        'abeleinin/papyrus',
        ft = 'markdown',
        config = function()
            vim.g.papyrus_latex_engine = 'pdflatex'
            vim.g.papyrus_viewer = 'zathura'
            vim.api.nvim_create_user_command('StartPandocMarkdown', function()
                require('luasnip').add_snippets('markdown', require 'config.snippets.tex')
                vim.cmd [[set syntax=markdown.pandoc]]
                vim.cmd [[PapyrusStart]]
            end, {})
        end,
    },
}
