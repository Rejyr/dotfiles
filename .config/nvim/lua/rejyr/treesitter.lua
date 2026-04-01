-- treesitter
-- ensure installed
local ensure_languages = {
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
}
require('nvim-treesitter').install(ensure_languages)

-- ensure enabled
local filetypes = vim.iter(ensure_languages):map(vim.treesitter.language.get_filetypes):flatten():totable()
local ts_start = function(ev)
    vim.treesitter.start(ev.buf)
end
vim.api.nvim_create_autocmd('FileType', {
    pattern = filetypes,
    callback = ts_start,
})
