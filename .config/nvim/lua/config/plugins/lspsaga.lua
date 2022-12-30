local M = {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    event = 'VeryLazy',
}

function M.config()
    require('lspsaga').init_lsp_saga({
        code_action_lightbulb = {
            enable = false
        }
    })
end

return M
