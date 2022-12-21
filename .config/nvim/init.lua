require 'config.dashboard'
require 'config.options'
require 'config.theme'

vim.defer_fn(function()
    require 'config.mappings'
    require 'config.plugins'
end, 100)
