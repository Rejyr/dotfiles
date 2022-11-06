-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rejyr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n¥\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0B\0\4\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nÈ\2\0\0\6\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\0\0'\5\6\0B\3\2\0029\3\1\0039\3\a\0035\5\b\0B\3\2\2=\3\a\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\1\0\3\tbold\2\vitalic\2\14underline\2\15highlights\tnord\foptions\1\0\0\1\0\1\20separator_style\nthick\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["drop.nvim"] = {
    config = { "\27LJ\2\n¥\1\0\0\3\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\3\0009\0\4\0'\2\6\0B\0\2\1K\0\1\0001:command DropHide lua require('drop').hide()1:command DropShow lua require('drop').show()\bcmd\bvim\nsetup\tdrop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/drop.nvim",
    url = "https://github.com/folke/drop.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nß\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0¿\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\21try_node_modules\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4í\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\nstdin\2\bexe\vstyluaS\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmtá\2\1\0\a\0\20\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0026\1\a\0'\3\t\0B\1\2\0029\1\n\0015\3\18\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\r\0044\5\3\0003\6\14\0>\6\1\5=\5\15\0044\5\3\0003\6\16\0>\6\1\5=\5\17\4=\4\19\3B\1\2\0012\0\0ÄK\0\1\0\rfiletype\1\0\0\trust\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nÕ\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n»\6\0\0\4\0\19\0,6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\0\0009\0\6\0'\2\a\0B\0\2\0016\0\0\0009\0\6\0'\2\b\0B\0\2\0016\0\0\0009\0\6\0'\2\t\0B\0\2\0016\0\0\0009\0\6\0'\2\n\0B\0\2\0016\0\0\0009\0\6\0'\2\v\0B\0\2\0016\0\0\0009\0\6\0'\2\f\0B\0\2\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\2B\0\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\25show_current_context\2\25use_treesitter_scope\2\31show_current_context_start\2\nsetup\21indent_blankline\frequireAhighlight IndentBlanklineIndent5 guifg=#A3BE8C gui=nocombineAhighlight IndentBlanklineIndent4 guifg=#8FBCBB gui=nocombineAhighlight IndentBlanklineIndent3 guifg=#88C0D0 gui=nocombineAhighlight IndentBlanklineIndent2 guifg=#81A1C1 gui=nocombineAhighlight IndentBlanklineIndent1 guifg=#5E81AC gui=nocombineEhighlight IndentBlanklineContextChar guifg=#BF616A gui=nocombine\bcmd\feol:‚Ü¥\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nh\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\2\ntheme\tnord\17globalstatus\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mason-tool-installer.nvim",
    url = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire†\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequire¨\3\1\0\4\0\18\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\b\0005\3\a\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\f\0005\3\v\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\r\0005\2\16\0003\3\14\0>\3\1\0023\3\15\0=\3\17\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\1\0\1\27automatic_installation\2\1\v\0\0\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\20mason-lspconfig\21ensure_installed\1\0\0\1\3\0\0\rprettier\vstylua\25mason-tool-installer\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\17mini.starter\nsetup\18mini.surround\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n–\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\næ\5\0\0\a\0 \0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\0035\4\15\0005\5\16\0=\5\n\0045\5\17\0=\5\f\0045\5\18\0005\6\19\0=\6\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\0016\0\0\0'\2\28\0B\0\2\0029\0\29\0'\2\1\0B\0\2\0016\0\0\0'\2\30\0B\0\2\0029\0\2\0005\2\31\0B\0\2\1K\0\1\0\1\0\1\22background_colour\f#1a1b26\vnotify\19load_extension\14telescope\nviews\14popupmenu\16win_options\17winhighlight\1\0\0\1\0\2\vNormal\vNormal\16FloatBorder\19DiagnosticInfo\vborder\fpadding\1\3\0\0\3\0\3\1\1\0\1\nstyle\frounded\1\0\2\vheight\3\n\nwidth\3P\1\0\2\bcol\b50%\brow\3\18\1\0\1\rrelative\veditor\18cmdline_popup\1\0\0\tsize\1\0\2\vheight\tauto\nwidth\3P\rposition\1\0\0\1\0\2\bcol\b50%\brow\3\15\blsp\1\0\0\roverride\1\0\0\1\0\0043vim.lsp.handlers[\"textDocument/signatureHelp\"]\1 cmp.entry.get_documentation\2\"vim.lsp.util.stylize_markdown\0021vim.lsp.util.convert_input_to_markdown_lines\2\nsetup\nnoice\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    after = { "tabout.nvim" },
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3¿\5\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleà\v\1\0\f\0@\0r6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0025\3\b\0009\4\t\0015\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0003\b\17\0=\b\19\a=\a\20\0065\a\23\0009\b\21\0019\b\22\bB\b\1\2=\b\24\a9\b\21\0019\b\25\bB\b\1\2=\b\26\a9\b\21\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\21\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\21\0019\b!\b)\n¸ˇB\b\2\2=\b\"\a9\b\21\0019\b!\b)\n\4\0B\b\2\2=\b#\a9\b\21\0019\b$\bB\b\1\2=\b%\a9\b\21\0019\b&\bB\b\1\2=\b'\a9\b\21\0019\b(\b5\n+\0009\v)\0019\v*\v=\v,\nB\b\2\2=\b-\a=\a\21\0064\a\t\0005\b.\0>\b\1\a5\b/\0>\b\2\a5\b0\0>\b\3\a5\b1\0>\b\4\a5\b2\0>\b\5\a5\b3\0>\b\6\a5\b4\0>\b\a\a5\b5\0>\b\b\a=\a6\6B\4\2\0019\4\t\0019\0047\4'\0068\0005\a:\0009\b\21\0019\b9\b9\b7\bB\b\1\2=\b\21\a9\b;\0019\b6\b4\n\5\0005\v<\0>\v\1\n5\v=\0>\v\2\n5\v>\0>\v\3\n5\v?\0>\v\4\nB\b\2\2=\b6\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\vconfig\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\nÓ≠ù  \nValue\nÓ™ï  \vStruct\nÓ™ë  \tUnit\nÓ™ñ  \nEvent\nÓ™Ü  \rProperty\nÓ≠•  \rOperator\nÓ≠§  \vModule\nÓ™ã  \18TypeParameter\nÓ™í  \14Interface\nÓ≠°  \nClass\nÓ≠õ  \rVariable\nÓ™à  \nField\nÓ≠ü  \16Constructor\nÓ™å  \rFunction\nÓ™å  \15EnumMember\nÓ™ï  \vMethod\nÓ™å  \vFolder\nÓ™É  \tText\nÓ™ì  \14Reference\nÓ™î  \tFile\nÓ©ª  \nColor\nÓ≠ú  \fSnippet\nÓ≠¶  \fKeyword\nÓ≠¢  \tEnum\nÓ™ï  \fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
    loaded = true,
    only_config = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-config-local"] = {
    config = { "\27LJ\2\nı\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\24autocommands_create\2\vsilent\1\19lookup_parents\1\20commands_create\2\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-config-local",
    url = "https://github.com/klen/nvim-config-local"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÌ\6\0\0\6\0)\0É\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\6\0049\4\n\0045\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\r\0045\5\14\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0006\4\0\0009\4\5\0049\4\6\0049\4\16\0045\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\18\0045\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0006\4\0\0009\4\5\0049\4\6\0049\4\21\0045\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\23\0006\4\0\0009\4\5\0049\4\6\0049\4\24\0045\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\26\0006\4\0\0009\4\5\0049\4\6\0049\4\27\0045\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\30\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\31\0006\4\0\0009\4\5\0049\4\6\0049\4 \0045\5!\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\"\0006\4\0\0009\4#\0049\4$\0045\5%\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3&\0006\4\0\0009\4#\0049\4'\0045\5(\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\21workspace_symbol\agW\1\0\1\vsilent\2\20document_symbol\ag0\1\0\1\vsilent\2\15references\agr\1\0\1\vsilent\2\20type_definition\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2\19implementation\agD\1\0\1\vsilent\2\nhover\6K\1\0\1\vsilent\2\15definition\bbuf\blsp\n<c-j>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n«\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\bset\vkeymap\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-transparent"] = {
    config = { "\27LJ\2\nk\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\4\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fexclude\15SignColumn\1\0\1\venable\2\nsetup\16transparent\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nï\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>NvimTreeToggle<CR>\14<Leader>v\6n\bset\vkeymap\bvim\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nó\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\nÌ\1\0\0\3\0\f\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0009\0\b\0B\0\1\0029\1\t\0005\2\v\0=\2\n\1K\0\1\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["renamer.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequireπ\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n\3\0\0\b\0\26\0%6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0'\2\t\0B\0\2\0029\0\n\0004\2\3\0005\3\16\0005\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\22\0005\6\20\0005\a\19\0=\a\21\6=\6\23\5=\5\24\4=\4\25\3>\3\1\2B\0\2\1K\0\1\0\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\1\15standalone\2\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\5\25show_parameter_hints\1\23other_hints_prefix\5\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\27<cmd>RustRunnables<cr>\16<leader>rrr\21<cmd>RustRun<cr>\15<leader>rr\6n\bset\vkeymap\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n…\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n»\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\1\vsilent\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\1\vsilent\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\vsilent\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\1\vsilent\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/McAuleyPenney/tidy.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n∞\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\1\vsilent\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\1\vsilent\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nì\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\1\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["true-zen.nvim"] = {
    config = { "\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\flualine\2\nsetup\rtrue-zen\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/true-zen.nvim",
    url = "https://github.com/Pocco81/true-zen.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-fish",
    url = "https://github.com/dag/vim-fish"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  vimtex = {
    config = { "\27LJ\2\n¿\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0)\1Ù\1=\1\5\0K\0\1\0\15timeoutlen\bopt\bvim\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-config-local
time([[Config for nvim-config-local]], true)
try_loadstring("\27LJ\2\nı\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\24autocommands_create\2\vsilent\1\19lookup_parents\1\20commands_create\2\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0", "config", "nvim-config-local")
time([[Config for nvim-config-local]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n¥\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0B\0\4\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bset\vkeymap\bvim\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0)\1Ù\1=\1\5\0K\0\1\0\15timeoutlen\bopt\bvim\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n»\6\0\0\4\0\19\0,6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\0\0009\0\6\0'\2\a\0B\0\2\0016\0\0\0009\0\6\0'\2\b\0B\0\2\0016\0\0\0009\0\6\0'\2\t\0B\0\2\0016\0\0\0009\0\6\0'\2\n\0B\0\2\0016\0\0\0009\0\6\0'\2\v\0B\0\2\0016\0\0\0009\0\6\0'\2\f\0B\0\2\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\2B\0\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\25show_current_context\2\25use_treesitter_scope\2\31show_current_context_start\2\nsetup\21indent_blankline\frequireAhighlight IndentBlanklineIndent5 guifg=#A3BE8C gui=nocombineAhighlight IndentBlanklineIndent4 guifg=#8FBCBB gui=nocombineAhighlight IndentBlanklineIndent3 guifg=#88C0D0 gui=nocombineAhighlight IndentBlanklineIndent2 guifg=#81A1C1 gui=nocombineAhighlight IndentBlanklineIndent1 guifg=#5E81AC gui=nocombineEhighlight IndentBlanklineContextChar guifg=#BF616A gui=nocombine\bcmd\feol:‚Ü¥\vappend\14listchars\tlist\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n…\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÌ\6\0\0\6\0)\0É\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\6\0049\4\n\0045\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\r\0045\5\14\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0006\4\0\0009\4\5\0049\4\6\0049\4\16\0045\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\18\0045\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0006\4\0\0009\4\5\0049\4\6\0049\4\21\0045\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\23\0006\4\0\0009\4\5\0049\4\6\0049\4\24\0045\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\26\0006\4\0\0009\4\5\0049\4\6\0049\4\27\0045\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\30\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\31\0006\4\0\0009\4\5\0049\4\6\0049\4 \0045\5!\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\"\0006\4\0\0009\4#\0049\4$\0045\5%\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3&\0006\4\0\0009\4#\0049\4'\0045\5(\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\21workspace_symbol\agW\1\0\1\vsilent\2\20document_symbol\ag0\1\0\1\vsilent\2\15references\agr\1\0\1\vsilent\2\20type_definition\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2\19implementation\agD\1\0\1\vsilent\2\nhover\6K\1\0\1\vsilent\2\15definition\bbuf\blsp\n<c-j>\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nh\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\2\ntheme\tnord\17globalstatus\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n«\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\bset\vkeymap\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n»\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\1\vsilent\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\1\vsilent\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\vsilent\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\1\vsilent\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n∞\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\1\vsilent\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\1\vsilent\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire†\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequire¨\3\1\0\4\0\18\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\b\0005\3\a\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\f\0005\3\v\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\r\0005\2\16\0003\3\14\0>\3\1\0023\3\15\0=\3\17\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\1\0\1\27automatic_installation\2\1\v\0\0\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\20mason-lspconfig\21ensure_installed\1\0\0\1\3\0\0\rprettier\vstylua\25mason-tool-installer\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nk\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\4\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fexclude\15SignColumn\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nì\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\1\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\17mini.starter\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nï\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>NvimTreeToggle<CR>\14<Leader>v\6n\bset\vkeymap\bvim\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: true-zen.nvim
time([[Config for true-zen.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\flualine\2\nsetup\rtrue-zen\frequire\0", "config", "true-zen.nvim")
time([[Config for true-zen.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n–\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\nÌ\1\0\0\3\0\f\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0009\0\b\0B\0\1\0029\1\t\0005\2\v\0=\2\n\1K\0\1\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequireπ\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5ÄÄ¿ô\4\0", "config", "renamer.nvim")
time([[Config for renamer.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nó\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3¿\5\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleà\v\1\0\f\0@\0r6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0025\3\b\0009\4\t\0015\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0003\b\17\0=\b\19\a=\a\20\0065\a\23\0009\b\21\0019\b\22\bB\b\1\2=\b\24\a9\b\21\0019\b\25\bB\b\1\2=\b\26\a9\b\21\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\21\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\21\0019\b!\b)\n¸ˇB\b\2\2=\b\"\a9\b\21\0019\b!\b)\n\4\0B\b\2\2=\b#\a9\b\21\0019\b$\bB\b\1\2=\b%\a9\b\21\0019\b&\bB\b\1\2=\b'\a9\b\21\0019\b(\b5\n+\0009\v)\0019\v*\v=\v,\nB\b\2\2=\b-\a=\a\21\0064\a\t\0005\b.\0>\b\1\a5\b/\0>\b\2\a5\b0\0>\b\3\a5\b1\0>\b\4\a5\b2\0>\b\5\a5\b3\0>\b\6\a5\b4\0>\b\a\a5\b5\0>\b\b\a=\a6\6B\4\2\0019\4\t\0019\0047\4'\0068\0005\a:\0009\b\21\0019\b9\b9\b7\bB\b\1\2=\b\21\a9\b;\0019\b6\b4\n\5\0005\v<\0>\v\1\n5\v=\0>\v\2\n5\v>\0>\v\3\n5\v?\0>\v\4\nB\b\2\2=\b6\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\vconfig\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\nÓ≠ù  \nValue\nÓ™ï  \vStruct\nÓ™ë  \tUnit\nÓ™ñ  \nEvent\nÓ™Ü  \rProperty\nÓ≠•  \rOperator\nÓ≠§  \vModule\nÓ™ã  \18TypeParameter\nÓ™í  \14Interface\nÓ≠°  \nClass\nÓ≠õ  \rVariable\nÓ™à  \nField\nÓ≠ü  \16Constructor\nÓ™å  \rFunction\nÓ™å  \15EnumMember\nÓ™ï  \vMethod\nÓ™å  \vFolder\nÓ™É  \tText\nÓ™ì  \14Reference\nÓ™î  \tFile\nÓ©ª  \nColor\nÓ≠ú  \fSnippet\nÓ≠¶  \fKeyword\nÓ≠¢  \tEnum\nÓ™ï  \fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nÕ\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nÈ\2\0\0\6\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\0\0'\5\6\0B\3\2\0029\3\1\0039\3\a\0035\5\b\0B\3\2\2=\3\a\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\1\0\3\tbold\2\vitalic\2\14underline\2\15highlights\tnord\foptions\1\0\0\1\0\1\20separator_style\nthick\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nß\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0¿\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\21try_node_modules\2\nstdin\2\bexe\rprettier\5ÄÄ¿ô\4í\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\nstdin\2\bexe\vstyluaS\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmtá\2\1\0\a\0\20\0!6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0026\1\a\0'\3\t\0B\1\2\0029\1\n\0015\3\18\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\r\0044\5\3\0003\6\14\0>\6\1\5=\5\15\0044\5\3\0003\6\16\0>\6\1\5=\5\17\4=\4\19\3B\1\2\0012\0\0ÄK\0\1\0\rfiletype\1\0\0\trust\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nÎ\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'noice.nvim', 'drop.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
