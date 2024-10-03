local M = {
    'echasnovski/mini.nvim',
    version = false,
    event = 'VeryLazy',
}

function M.config()
    local setup_modules = {
        'animate',
        'bracketed',
        'comment',
        'cursorword',
        'files',
        'hipatterns',
        'icons',
        'pairs',
        'statusline',
        'surround',
        'trailspace',
    }
    for _, m in pairs(setup_modules) do
        local setup_fn = M['setup_' .. m]
        if setup_fn == nil then
            require('mini.' .. m).setup()
        else
            ---@diagnostic disable-next-line: need-check-nil
            setup_fn()
        end
    end
end

function M.setup_animate()
    local function timing(_, total)
        local ms = 100
        return ms / total
    end
    require('mini.animate').setup {
        cursor = {
            timing = timing,
        },
        scroll = {
            timing = timing,
        },
    }
end

function M.setup_comment()
    local function commentstring()
        local ft = {
            openscad = '// %s',
        }
        return ft[vim.bo.filetype]
    end

    require('mini.comment').setup {
        options = {
            custom_commentstring = commentstring,
        },
    }
end

function M.setup_icons()
    require('mini.icons').setup()
    require('mini.icons').mock_nvim_web_devicons()
end

function M.setup_statusline()
    require('mini.statusline').setup()
    vim.o.laststatus = 3
end

function M.setup_trailspace()
    require('mini.trailspace').setup()
    local augroup = vim.api.nvim_create_augroup("RemoveTrailingWhitespace", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        callback = function ()
            require('mini.trailspace').trim()
            require('mini.trailspace').trim_last_lines()
        end
    })
end

return M
