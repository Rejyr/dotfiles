require 'dashboard'
require 'options'
require 'theme'

vim.defer_fn(function()
    require 'plugins'
end, 100)
