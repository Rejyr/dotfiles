local M = {
    'rmagatti/auto-session',
    lazy = false,

    dependencies = { 'rmagatti/session-lens' },
}

function M.config()
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Downloads', '/', '/tmp' },
        pre_save_cmds = { 'NvimTreeClose', 'cclose' },
        post_restore_cmds = { 'NvimTreeRefresh' },
    }
    require('session-lens').setup { theme_conf = { winblend = nil } }
end

return M
