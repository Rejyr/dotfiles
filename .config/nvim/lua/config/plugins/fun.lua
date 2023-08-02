return {
    {
        'tamton-aquib/duck.nvim',
        cmd = { 'DuckHatch', 'DuckCook' },
        config = function()
            vim.api.nvim_create_user_command('DuckHatch', function()
                require('duck').hatch 'ඞ'
            end, {})
            vim.api.nvim_create_user_command('DuckCook', function()
                require('duck').cook()
            end, {})
        end,
    },
}
