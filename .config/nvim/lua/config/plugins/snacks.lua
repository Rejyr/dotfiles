local M = {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
}

M.opts = {
    bigfile = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
}

return M
