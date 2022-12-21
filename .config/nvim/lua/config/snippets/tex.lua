local ls = require 'luasnip'
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require 'luasnip.util.events'
local ai = require 'luasnip.nodes.absolute_indexer'
local extras = require 'luasnip.extras'
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local conds = require 'luasnip.extras.expand_conditions'
local postfix = require('luasnip.extras.postfix').postfix
local types = require 'luasnip.util.types'
local parse = require('luasnip.util.parser').parse_snippet

local math = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
    -- date
    s({ trig = 'today', dscr = 'Date' }, {
        p(os.date, '%F'),
    }),
    -- sections
    s({ trig = 'part', dscr = 'Part' }, fmta([[\part{<>}]], i(1))),
    s({ trig = 'sec', dscr = 'Section' }, fmta([[\section{<>}]], i(1))),
    s({ trig = 'ssec', dscr = 'Subsection' }, fmta([[\subsection{<>}]], i(1))),
    s({ trig = 'sssec', dscr = 'Subsubsection' }, fmta([[\subsubsection{<>}]], i(1))),
    -- text types
    s({ trig = 'tit', dscr = 'Italic' }, fmta([[\textit{<>}]], i(1))),
    s({ trig = 'tbf', dscr = 'Bold' }, fmta([[\textbf{<>}]], i(1))),
    s({ trig = 'tul', dscr = 'Underline' }, fmta([[\underline{<>}]], i(1))),
    -- mbox
    s({ trig = 'mbox', snippetType = 'autosnippet', dscr = '\\mbox' }, fmta([[\mbox{<>}]], i(1)), { condition = math }),
    -- inline math
    s({ trig = 'mm', snippetType = 'autosnippet', dscr = 'Inline math' }, fmta([[$<>$]], i(1))),
    -- display math
    s(
        { trig = 'md', snippetType = 'autosnippet', dscr = 'Display math' },
        fmta(
            [[ 
                \[ 
                    <>
                .\]
            ]],
            {
                i(1),
            }
        )
    ),
    -- \begin{} \end{}
    s(
        { trig = 'env', snippetType = 'autosnippet' },
        fmta(
            [[
                \begin{<>}
                    <>
                \end{<>}
            ]],
            {
                i(1),
                i(2),
                rep(1), -- this node repeats insert node i(1)
            }
        )
    ),
    -- \begin{equation*} \end{equation*}
    s(
        { trig = 'eq', dscr = "Expands 'eq' into an equation environment" },
        fmta(
            [[
                \begin{equation*}
                    <>
                \end{equation*}
             ]],
            { i(1) }
        )
    ),
    -- dots
    s(
        { trig = '...', snippetType = 'autosnippet', wordTrig = false, dscr = 'Dots' },
        { t '\\dots' },
        { condition = math }
    ),
    -- alpha, beta, gamma
    s({ trig = ';a', snippetType = 'autosnippet', dscr = '\\alpha' }, {
        t '\\alpha',
    }, { condition = math }),
    s({ trig = ';b', snippetType = 'autosnippet', dscr = '\\beta' }, {
        t '\\beta',
    }, { condition = math }),
    s({ trig = ';g', snippetType = 'autosnippet', dscr = '\\gamma' }, {
        t '\\gamma',
    }, { condition = math }),
    -- superscript
    s(
        { trig = 'ts', snippetType = 'autosnippet', wordTrig = false, dscr = 'superscript' },
        fmta([[^{<>}]], { i(1) }),
        { condition = math }
    ),
    s(
        { trig = 'sr', snippetType = 'autosnippet', wordTrig = false, dscr = '^2' },
        fmta([[^2]], {}),
        { condition = math }
    ),
    s(
        { trig = 'cr', snippetType = 'autosnippet', wordTrig = false, dscr = '^3' },
        fmta([[^3]], {}),
        { condition = math }
    ),
    -- subscript
    s(
        { trig = 'td', snippetType = 'autosnippet', wordTrig = false, dscr = 'subscript' },
        fmta([[_{<>}]], i(1)),
        { condition = math }
    ),
    s(
        { trig = '(%a)(%d)', regTrig = true, snippetType = 'autosnippet', dscr = 'auto subscript' },
        fmta([[<>_<>]], {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
        }),
        { condition = math }
    ),
    s(
        { trig = '(%a)_(%d%d)', regTrig = true, snippetType = 'autosnippet', dscr = 'auto subscript for 2+ digits' },
        fmta([[<>_{<>}]], {
            f(function(_, snip)
                return snip.captures[1]
            end),
            f(function(_, snip)
                return snip.captures[2]
            end),
        }),
        { condition = math }
    ),
    -- times
    s({ trig = 'xx', snippetType = 'autosnippet', dscr = '\\times' }, { t '\\times ' }, { condition = math }),
    -- fraction
    s(
        { trig = '//', snippetType = 'autosnippet', wordTrig = false, dscr = 'Fraction' },
        fmta('\\frac{<>}{<>}', {
            i(1),
            i(2),
        }),
        { condition = math }
    ),
}
