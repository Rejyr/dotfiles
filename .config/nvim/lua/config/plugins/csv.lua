return {
    'emmanueltouzery/decisive.nvim',
    config = function()
        require('decisive').setup {}
    end,
    lazy = true,
    ft = { 'csv' },
}
