require 'dashboard'
require 'options'
require 'theme'

vim.defer_fn(function()
    require 'mappings'
    require 'plugins'
end, 100)
