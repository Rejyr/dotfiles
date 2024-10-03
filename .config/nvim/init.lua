require 'config.options'
require 'config.lazy'
require 'config.dashboard'
require 'config.theme'
require('config.plugins.custom.highlight_yank').setup()

vim.api.nvim_create_autocmd('User', {
    pattern = 'VeryLazy',
    callback = function()
        require 'config.mappings'
    end,
})
