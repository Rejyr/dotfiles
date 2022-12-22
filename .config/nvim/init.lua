require 'config.options'
require 'config.lazy'
require 'config.dashboard'
require 'config.theme'

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("config.mappings")
  end,
})
