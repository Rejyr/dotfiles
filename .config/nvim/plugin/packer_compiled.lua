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
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0B\0\4\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n�\4\0\0\5\0\23\0*6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0005\3\b\0=\3\t\2B\0\2\0016\0\4\0'\2\n\0B\0\2\0029\0\6\0005\2\f\0005\3\v\0=\3\r\2B\0\2\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0B\0\4\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\19\0'\4\20\0B\0\4\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\21\0'\4\22\0B\0\4\1K\0\1\0\27<cmd>SearchSession<CR>\15<leader>st\25<cmd>SaveSession<CR>\15<leader>ss\28<cmd>RestoreSession<CR>\15<leader>sl\6n\bset\vkeymap\15theme_conf\1\0\0\1\0\0\17session-lens\31auto_session_suppress_dirs\1\4\0\0\a~/\16~/Downloads\6/\1\0\1\14log_level\nerror\nsetup\17auto-session\frequireRblank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions\19sessionoptions\6o\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\0\0'\5\6\0B\3\2\0029\3\1\0039\3\a\0035\5\b\0B\3\2\2=\3\a\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\1\0\3\vitalic\2\14underline\2\tbold\2\15highlights\tnord\foptions\1\0\0\1\0\1\20separator_style\nthick\nsetup\15bufferline\frequire\0" },
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
  ["colorful-winsep.nvim"] = {
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\2\nguifg\f#5E81AC\nguibg\f#2E3440\nsetup\20colorful-winsep\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/colorful-winsep.nvim",
    url = "https://github.com/nvim-zh/colorful-winsep.nvim"
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
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["drop.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\3\0009\0\4\0'\2\6\0B\0\2\1K\0\1\0001:command DropHide lua require('drop').hide()1:command DropShow lua require('drop').show()\bcmd\bvim\nsetup\tdrop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/drop.nvim",
    url = "https://github.com/folke/drop.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rfiletype\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0�\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\bexe\rprettier\nstdin\2\21try_node_modules\2\5����\4�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\bexe\vstylua\nstdin\2:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\bexe\rautopep8\nstdin\3\1S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\bexe\frustfmt\nstdin\2�\2\1\0\a\0\22\0%6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0026\1\a\0'\3\t\0B\1\2\0029\1\n\0015\3\20\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\r\0044\5\3\0003\6\14\0>\6\1\5=\5\15\0044\5\3\0003\6\16\0>\6\1\5=\5\17\0044\5\3\0003\6\18\0>\6\1\5=\5\19\4=\4\21\3B\1\2\0012\0\0�K\0\1\0\rfiletype\1\0\0\trust\0\vpython\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0" },
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
  ["glance.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/glance.nvim",
    url = "https://github.com/dnlhc/glance.nvim"
  },
  ["grapple.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\1\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\2\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\3\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\4\vselect�\4\1\0\b\0 \0P6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0026\2\5\0009\2\6\0029\2\a\2)\4\0\0'\5\b\0005\6\n\0009\a\t\1=\a\v\0069\a\f\1=\a\r\6B\2\4\0016\2\5\0009\2\6\0029\2\a\2)\4\0\0'\5\14\0005\6\16\0009\a\15\1=\a\v\0069\a\f\1=\a\r\6B\2\4\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\20\0009\6\21\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\22\0009\6\23\0B\2\4\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\24\0003\6\25\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\26\0003\6\27\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\28\0003\6\29\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\30\0003\6\31\0004\a\0\0B\2\5\0012\0\0�K\0\1\0\0\15<leader>g4\0\15<leader>g3\0\15<leader>g2\0\15<leader>g1\15popup_tags\15<leader>gp\vtoggle\14<leader>m\6n\bset\vkeymap\1\0\1\14nocombine\1\fglacier\30LualineGrappleTagInactive\abg\tgray\afg\1\0\1\14nocombine\1\roff_blue\28LualineGrappleTagActive\16nvim_set_hl\bapi\bvim\22nord.named_colors\1\0\1\nscope\14directory\nsetup\fgrapple\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/grapple.nvim",
    url = "https://github.com/cbochs/grapple.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14impatient\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\a\0\"\0M6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0026\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\n\0005\5\f\0009\6\v\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\14\0005\5\16\0009\6\15\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\17\0005\5\19\0009\6\18\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\20\0005\5\22\0009\6\21\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\23\0005\5\25\0009\6\24\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\26\0005\5\28\0009\6\27\0=\6\r\5B\1\4\0016\1\6\0'\3\29\0B\1\2\0029\1\30\0015\3\31\0005\4 \0=\4!\3B\1\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\25use_treesitter_scope\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\1\0\1\14nocombine\1\ngreen\27IndentBlanklineIndent5\1\0\1\14nocombine\1\tteal\27IndentBlanklineIndent4\1\0\1\14nocombine\1\roff_blue\27IndentBlanklineIndent3\1\0\1\14nocombine\1\fglacier\27IndentBlanklineIndent2\1\0\1\14nocombine\1\tblue\27IndentBlanklineIndent1\afg\1\0\1\14nocombine\1\bred\31IndentBlanklineContextChar\16nvim_set_hl\bapi\22nord.named_colors\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\nb\0\0\5\1\6\0\v6\0\0\0009\0\1\0009\0\2\0005\2\4\0-\3\0\0009\3\3\3B\3\1\2\19\3\3\0=\3\5\2B\0\2\1K\0\1\0\0�\17virtual_text\1\0\0\vtoggle\vconfig\15diagnostic\bvim�\1\1\0\a\0\r\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0B\1\2\0016\1\3\0009\1\a\0019\1\b\1'\3\t\0'\4\n\0003\5\v\0005\6\f\0B\1\5\0012\0\0�K\0\1\0\1\0\1\tdesc\21Toggle lsp_lines\0\14<Leader>l\5\bset\vkeymap\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\14lualine_b\1\0\0\1\5\0\0\vbranch\fgrapple\tdiff\16diagnostics\foptions\1\0\0\1\0\2\17globalstatus\2\ntheme\tnord\nsetup\flualine\frequire\0" },
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
    config = { "\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire�\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequire�\3\1\0\4\0\18\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\b\0005\3\a\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\f\0005\3\v\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\r\0005\2\16\0003\3\14\0>\3\1\0023\3\15\0=\3\17\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\1\0\1\27automatic_installation\2\1\f\0\0\vbashls\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\20mason-lspconfig\21ensure_installed\1\0\0\1\4\0\0\rprettier\vstylua\rautopep8\25mason-tool-installer\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\17mini.starter\nsetup\18mini.surround\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\a\0 \0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\0035\4\15\0005\5\16\0=\5\n\0045\5\17\0=\5\f\0045\5\18\0005\6\19\0=\6\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\0016\0\0\0'\2\28\0B\0\2\0029\0\29\0'\2\1\0B\0\2\0016\0\0\0'\2\30\0B\0\2\0029\0\2\0005\2\31\0B\0\2\1K\0\1\0\1\0\1\22background_colour\f#1a1b26\vnotify\19load_extension\14telescope\nviews\14popupmenu\16win_options\17winhighlight\1\0\0\1\0\2\vNormal\vNormal\16FloatBorder\19DiagnosticInfo\vborder\fpadding\1\3\0\0\3\0\3\1\1\0\1\nstyle\frounded\1\0\2\vheight\3\n\nwidth\3P\1\0\2\bcol\b50%\brow\3\18\1\0\1\rrelative\veditor\18cmdline_popup\1\0\0\tsize\1\0\2\vheight\tauto\nwidth\3P\rposition\1\0\0\1\0\2\bcol\b50%\brow\3\15\blsp\1\0\0\roverride\1\0\0\1\0\0041vim.lsp.util.convert_input_to_markdown_lines\0023vim.lsp.handlers[\"textDocument/signatureHelp\"]\1 cmp.entry.get_documentation\2\"vim.lsp.util.stylize_markdown\2\nsetup\nnoice\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1�'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3�\5\tkind�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\0�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\tjump\rjumpable\21select_prev_item\fvisible�\f\1\0\f\0D\0z6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0026\3\5\0'\5\b\0B\3\2\0029\3\t\0035\5\n\0B\3\2\0019\3\v\0029\3\f\0035\5\r\0B\3\2\0015\3\14\0009\4\15\0015\6\19\0005\a\17\0003\b\16\0=\b\18\a=\a\20\0065\a\21\0=\a\22\0065\a\24\0003\b\23\0=\b\25\a=\a\26\0065\a\29\0009\b\27\0019\b\28\bB\b\1\2=\b\30\a9\b\27\0019\b\31\bB\b\1\2=\b \a9\b\27\0013\n!\0005\v\"\0B\b\3\2=\b#\a9\b\27\0013\n$\0005\v%\0B\b\3\2=\b&\a9\b\27\0019\b'\b)\n��B\b\2\2=\b(\a9\b\27\0019\b'\b)\n\4\0B\b\2\2=\b)\a9\b\27\0019\b*\bB\b\1\2=\b+\a9\b\27\0019\b,\bB\b\1\2=\b-\a9\b\27\0019\b.\b5\n1\0009\v/\0019\v0\v=\v2\nB\b\2\2=\b3\a=\a\27\0064\a\b\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a5\b7\0>\b\4\a5\b8\0>\b\5\a5\b9\0>\b\6\a5\b:\0>\b\a\a=\a;\6B\4\2\0019\4\15\0019\4<\4'\6=\0005\a?\0009\b\27\0019\b>\b9\b<\bB\b\1\2=\b\27\a9\b\v\0019\b;\b4\n\5\0005\v@\0>\v\1\n5\vA\0>\v\2\n5\vB\0>\v\3\n5\vC\0>\v\4\nB\b\2\2=\b;\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\14Interface\n  \rConstant\n  \nClass\n  \vStruct\n  \rVariable\n  \nEvent\n  \nField\n  \16Constructor\n  \rFunction\n  \15EnumMember\n  \vMethod\n  \vFolder\n  \tText\n  \14Reference\n  \rOperator\n  \tFile\n  \18TypeParameter\n  \nColor\n  \fSnippet\n  \fKeyword\n  \tEnum\n  \nValue\n  \tUnit\n  \rProperty\n  \vModule\n  \1\0\2\25store_selection_keys\n<Tab>\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
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
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\19lookup_parents\1\vsilent\1\20commands_create\2\24autocommands_create\2\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0" },
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
    config = { "\27LJ\2\n�\a\0\0\a\0-\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0006\5\4\0009\5\f\0059\5\r\0059\5\14\0055\6\15\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\16\0'\5\17\0005\6\18\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\19\0006\5\4\0009\5\f\0059\5\r\0059\5\20\0055\6\21\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\16\0'\5\22\0005\6\23\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\27\0009\5\28\0005\6\29\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\30\0009\5\31\0005\6 \0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4!\0'\5\t\0005\6\"\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4#\0006\5\4\0009\5\f\0059\5\r\0059\5$\0055\6%\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4&\0006\5\4\0009\5'\0059\5(\0055\6)\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4*\0006\5\4\0009\5'\0059\5+\0055\6,\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\26lsp_workspace_symbols\agW\1\0\1\vsilent\2\25lsp_document_symbols\ag0\1\0\1\vsilent\2\31<CMD>Glance references<CR>\agr\1\0\1\vsilent\2%<CMD>Glance type_definitions<CR>\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2$<CMD>Glance implementations<CR>\agD\1\0\1\vsilent\2\nhover\bbuf\blsp\6K\1\0\1\vsilent\2 <CMD>Glance definitions<CR>\n<c-]>\6n\bset\vkeymap\bvim\nsetup\vglance\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\bset\vkeymap\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>NvimTreeToggle<CR>\14<Leader>v\6n\bset\vkeymap\bvim\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n�\2\0\5\23\0\v\0I4\5\0\0'\6\0\0\18\b\6\0009\6\1\6!\t\1\2B\6\3\0026\a\2\0009\a\3\a9\a\4\a\18\t\6\0B\a\2\2!\b\a\3)\t\0\0006\n\5\0\18\f\0\0B\n\2\4X\r/�:\15\1\0146\16\2\0009\16\3\0169\16\4\16\18\18\15\0B\16\2\2 \17\16\t\1\17\b\0X\17\6�6\17\6\0009\17\a\17\18\19\5\0\18\20\14\0B\17\3\1X\17\31�\18\17\4\0\18\19\15\0!\20\t\bB\17\3\2\18\15\17\0:\17\2\0146\18\6\0009\18\a\18\18\20\5\0004\21\3\0>\15\1\21>\17\2\21B\18\3\0016\18\2\0009\18\3\0189\18\4\18\18\20\15\0B\18\2\2\18\16\18\0 \18\16\t\1\18\b\0X\18\f�\18\18\6\0'\19\b\0\18\21\19\0009\19\t\19!\22\t\b!\22\16\22B\19\3\2&\6\19\18X\n\3� \t\16\tE\r\3\3R\r�\1276\n\6\0009\n\a\n\18\f\5\0005\r\n\0>\6\1\rB\n\3\1L\5\2\0\1\3\0\0\0\fMoreMsg\brep\6 \vinsert\ntable\vipairs\20strdisplaywidth\afn\bvim\vformat\r  %d %\0\3\4\0\1\0\0025\3\0\0L\3\2\0\1\3\0\0\15treesitter\vindent�\2\1\0\6\0\15\0\0306\0\0\0009\0\1\0)\1c\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0029\1\a\0015\3\b\0=\0\t\0033\4\n\0=\4\v\3B\1\2\0016\1\0\0009\1\f\0019\1\r\1B\1\1\0026\2\5\0'\4\6\0B\2\2\0029\2\14\2\18\4\1\0\18\5\0\0B\2\3\1K\0\1\0\27setFoldVirtTextHandler\25nvim_get_current_buf\bapi\22provider_selector\0\27fold_virt_text_handler\1\0\0\nsetup\bufo\frequire\0\15foldenable\14foldlevel\awo\bvim\0" },
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
  ["portal.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\16\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0006\4\0\0'\6\1\0B\4\2\0029\4\r\0044\5\0\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0006\4\0\0'\6\1\0B\4\2\0029\4\15\0044\5\0\0B\0\5\1K\0\1\0\17jump_forward\14<leader>i\18jump_backward\14<leader>o\6n\bset\vkeymap\bvim\17integrations\1\0\1\fgrapple\2\nquery\1\0\0\1\4\0\0\fgrapple\rmodified\14different\nsetup\vportal\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/portal.nvim",
    url = "https://github.com/cbochs/portal.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["renamer.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire�\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5����\4\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\26\0%6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0'\2\t\0B\0\2\0029\0\n\0004\2\3\0005\3\16\0005\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\22\0005\6\20\0005\a\19\0=\a\21\6=\6\23\5=\5\24\4=\4\25\3>\3\1\2B\0\2\1K\0\1\0\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\1\15standalone\2\ntools\1\0\0\16inlay_hints\1\0\3\23other_hints_prefix\5\27parameter_hints_prefix\5\25show_parameter_hints\1\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\27<cmd>RustRunnables<cr>\16<leader>rrr\21<cmd>RustRun<cr>\15<leader>rr\6n\bset\vkeymap\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["session-lens"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/session-lens",
    url = "https://github.com/rmagatti/session-lens"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\1\vsilent\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\1\vsilent\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\vsilent\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\1\vsilent\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\0" },
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
    config = { "\27LJ\2\n�\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\1\vsilent\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\1\vsilent\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\1\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\0" },
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
    config = { "\27LJ\2\n�\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0)\1�\1=\1\5\0K\0\1\0\15timeoutlen\bopt\bvim\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\1\vsilent\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\1\vsilent\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\a\0\0\a\0-\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0006\5\4\0009\5\f\0059\5\r\0059\5\14\0055\6\15\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\16\0'\5\17\0005\6\18\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\19\0006\5\4\0009\5\f\0059\5\r\0059\5\20\0055\6\21\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\16\0'\5\22\0005\6\23\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\27\0009\5\28\0005\6\29\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\30\0009\5\31\0005\6 \0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4!\0'\5\t\0005\6\"\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4#\0006\5\4\0009\5\f\0059\5\r\0059\5$\0055\6%\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4&\0006\5\4\0009\5'\0059\5(\0055\6)\0B\1\5\0016\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4*\0006\5\4\0009\5'\0059\5+\0055\6,\0B\1\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\26lsp_workspace_symbols\agW\1\0\1\vsilent\2\25lsp_document_symbols\ag0\1\0\1\vsilent\2\31<CMD>Glance references<CR>\agr\1\0\1\vsilent\2%<CMD>Glance type_definitions<CR>\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2$<CMD>Glance implementations<CR>\agD\1\0\1\vsilent\2\nhover\bbuf\blsp\6K\1\0\1\vsilent\2 <CMD>Glance definitions<CR>\n<c-]>\6n\bset\vkeymap\bvim\nsetup\vglance\22telescope.builtin\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\1\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\bset\vkeymap\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\a\0\0\a\0\"\0M6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0026\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\n\0005\5\f\0009\6\v\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\14\0005\5\16\0009\6\15\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\17\0005\5\19\0009\6\18\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\20\0005\5\22\0009\6\21\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\23\0005\5\25\0009\6\24\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\26\0005\5\28\0009\6\27\0=\6\r\5B\1\4\0016\1\6\0'\3\29\0B\1\2\0029\1\30\0015\3\31\0005\4 \0=\4!\3B\1\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\25use_treesitter_scope\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\1\0\1\14nocombine\1\ngreen\27IndentBlanklineIndent5\1\0\1\14nocombine\1\tteal\27IndentBlanklineIndent4\1\0\1\14nocombine\1\roff_blue\27IndentBlanklineIndent3\1\0\1\14nocombine\1\fglacier\27IndentBlanklineIndent2\1\0\1\14nocombine\1\tblue\27IndentBlanklineIndent1\afg\1\0\1\14nocombine\1\bred\31IndentBlanklineContextChar\16nvim_set_hl\bapi\22nord.named_colors\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: true-zen.nvim
time([[Config for true-zen.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\flualine\2\nsetup\rtrue-zen\frequire\0", "config", "true-zen.nvim")
time([[Config for true-zen.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: lsp_lines.nvim
time([[Config for lsp_lines.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\5\1\6\0\v6\0\0\0009\0\1\0009\0\2\0005\2\4\0-\3\0\0009\3\3\3B\3\1\2\19\3\3\0=\3\5\2B\0\2\1K\0\1\0\0�\17virtual_text\1\0\0\vtoggle\vconfig\15diagnostic\bvim�\1\1\0\a\0\r\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0B\1\2\0016\1\3\0009\1\a\0019\1\b\1'\3\t\0'\4\n\0003\5\v\0005\6\f\0B\1\5\0012\0\0�K\0\1\0\1\0\1\tdesc\21Toggle lsp_lines\0\14<Leader>l\5\bset\vkeymap\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0", "config", "lsp_lines.nvim")
time([[Config for lsp_lines.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nk\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\4\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fexclude\15SignColumn\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\rsections\14lualine_b\1\0\0\1\5\0\0\vbranch\fgrapple\tdiff\16diagnostics\foptions\1\0\0\1\0\2\17globalstatus\2\ntheme\tnord\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>NvimTreeToggle<CR>\14<Leader>v\6n\bset\vkeymap\bvim\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire�\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequire�\3\1\0\4\0\18\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0005\2\b\0005\3\a\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\2\0005\2\f\0005\3\v\0=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0029\0\r\0005\2\16\0003\3\14\0>\3\1\0023\3\15\0=\3\17\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\1\0\1\27automatic_installation\2\1\f\0\0\vbashls\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\20mason-lspconfig\21ensure_installed\1\0\0\1\4\0\0\rprettier\vstylua\rautopep8\25mason-tool-installer\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\17mini.starter\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n�\4\0\0\5\0\23\0*6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0005\3\b\0=\3\t\2B\0\2\0016\0\4\0'\2\n\0B\0\2\0029\0\6\0005\2\f\0005\3\v\0=\3\r\2B\0\2\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0B\0\4\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\19\0'\4\20\0B\0\4\0016\0\0\0009\0\14\0009\0\15\0'\2\16\0'\3\21\0'\4\22\0B\0\4\1K\0\1\0\27<cmd>SearchSession<CR>\15<leader>st\25<cmd>SaveSession<CR>\15<leader>ss\28<cmd>RestoreSession<CR>\15<leader>sl\6n\bset\vkeymap\15theme_conf\1\0\0\1\0\0\17session-lens\31auto_session_suppress_dirs\1\4\0\0\a~/\16~/Downloads\6/\1\0\1\14log_level\nerror\nsetup\17auto-session\frequireRblank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions\19sessionoptions\6o\bvim\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-config-local
time([[Config for nvim-config-local]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\19lookup_parents\1\vsilent\1\20commands_create\2\24autocommands_create\2\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0", "config", "nvim-config-local")
time([[Config for nvim-config-local]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0)\1�\1=\1\5\0K\0\1\0\15timeoutlen\bopt\bvim\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\n�\2\0\5\23\0\v\0I4\5\0\0'\6\0\0\18\b\6\0009\6\1\6!\t\1\2B\6\3\0026\a\2\0009\a\3\a9\a\4\a\18\t\6\0B\a\2\2!\b\a\3)\t\0\0006\n\5\0\18\f\0\0B\n\2\4X\r/�:\15\1\0146\16\2\0009\16\3\0169\16\4\16\18\18\15\0B\16\2\2 \17\16\t\1\17\b\0X\17\6�6\17\6\0009\17\a\17\18\19\5\0\18\20\14\0B\17\3\1X\17\31�\18\17\4\0\18\19\15\0!\20\t\bB\17\3\2\18\15\17\0:\17\2\0146\18\6\0009\18\a\18\18\20\5\0004\21\3\0>\15\1\21>\17\2\21B\18\3\0016\18\2\0009\18\3\0189\18\4\18\18\20\15\0B\18\2\2\18\16\18\0 \18\16\t\1\18\b\0X\18\f�\18\18\6\0'\19\b\0\18\21\19\0009\19\t\19!\22\t\b!\22\16\22B\19\3\2&\6\19\18X\n\3� \t\16\tE\r\3\3R\r�\1276\n\6\0009\n\a\n\18\f\5\0005\r\n\0>\6\1\rB\n\3\1L\5\2\0\1\3\0\0\0\fMoreMsg\brep\6 \vinsert\ntable\vipairs\20strdisplaywidth\afn\bvim\vformat\r  %d %\0\3\4\0\1\0\0025\3\0\0L\3\2\0\1\3\0\0\15treesitter\vindent�\2\1\0\6\0\15\0\0306\0\0\0009\0\1\0)\1c\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0029\1\a\0015\3\b\0=\0\t\0033\4\n\0=\4\v\3B\1\2\0016\1\0\0009\1\f\0019\1\r\1B\1\1\0026\2\5\0'\4\6\0B\2\2\0029\2\14\2\18\4\1\0\18\5\0\0B\2\3\1K\0\1\0\27setFoldVirtTextHandler\25nvim_get_current_buf\bapi\22provider_selector\0\27fold_virt_text_handler\1\0\0\nsetup\bufo\frequire\0\15foldenable\14foldlevel\awo\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0B\0\4\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bset\vkeymap\bvim\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: portal.nvim
time([[Config for portal.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\16\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0006\4\0\0'\6\1\0B\4\2\0029\4\r\0044\5\0\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\14\0006\4\0\0'\6\1\0B\4\2\0029\4\15\0044\5\0\0B\0\5\1K\0\1\0\17jump_forward\14<leader>i\18jump_backward\14<leader>o\6n\bset\vkeymap\bvim\17integrations\1\0\1\fgrapple\2\nquery\1\0\0\1\4\0\0\fgrapple\rmodified\14different\nsetup\vportal\frequire\0", "config", "portal.nvim")
time([[Config for portal.nvim]], false)
-- Config for: colorful-winsep.nvim
time([[Config for colorful-winsep.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\2\nguifg\f#5E81AC\nguibg\f#2E3440\nsetup\20colorful-winsep\frequire\0", "config", "colorful-winsep.nvim")
time([[Config for colorful-winsep.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0�\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\bexe\rprettier\nstdin\2\21try_node_modules\2\5����\4�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\bexe\vstylua\nstdin\2:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\bexe\rautopep8\nstdin\3\1S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\bexe\frustfmt\nstdin\2�\2\1\0\a\0\22\0%6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0026\1\a\0'\3\t\0B\1\2\0029\1\n\0015\3\20\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\r\0044\5\3\0003\6\14\0>\6\1\5=\5\15\0044\5\3\0003\6\16\0>\6\1\5=\5\17\0044\5\3\0003\6\18\0>\6\1\5=\5\19\4=\4\21\3B\1\2\0012\0\0�K\0\1\0\rfiletype\1\0\0\trust\0\vpython\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1�'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3�\5\tkind�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\0�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\tjump\rjumpable\21select_prev_item\fvisible�\f\1\0\f\0D\0z6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0026\3\5\0'\5\b\0B\3\2\0029\3\t\0035\5\n\0B\3\2\0019\3\v\0029\3\f\0035\5\r\0B\3\2\0015\3\14\0009\4\15\0015\6\19\0005\a\17\0003\b\16\0=\b\18\a=\a\20\0065\a\21\0=\a\22\0065\a\24\0003\b\23\0=\b\25\a=\a\26\0065\a\29\0009\b\27\0019\b\28\bB\b\1\2=\b\30\a9\b\27\0019\b\31\bB\b\1\2=\b \a9\b\27\0013\n!\0005\v\"\0B\b\3\2=\b#\a9\b\27\0013\n$\0005\v%\0B\b\3\2=\b&\a9\b\27\0019\b'\b)\n��B\b\2\2=\b(\a9\b\27\0019\b'\b)\n\4\0B\b\2\2=\b)\a9\b\27\0019\b*\bB\b\1\2=\b+\a9\b\27\0019\b,\bB\b\1\2=\b-\a9\b\27\0019\b.\b5\n1\0009\v/\0019\v0\v=\v2\nB\b\2\2=\b3\a=\a\27\0064\a\b\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a5\b7\0>\b\4\a5\b8\0>\b\5\a5\b9\0>\b\6\a5\b:\0>\b\a\a=\a;\6B\4\2\0019\4\15\0019\4<\4'\6=\0005\a?\0009\b\27\0019\b>\b9\b<\bB\b\1\2=\b\27\a9\b\v\0019\b;\b4\n\5\0005\v@\0>\v\1\n5\vA\0>\v\2\n5\vB\0>\v\3\n5\vC\0>\v\4\nB\b\2\2=\b;\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\14Interface\n  \rConstant\n  \nClass\n  \vStruct\n  \rVariable\n  \nEvent\n  \nField\n  \16Constructor\n  \rFunction\n  \15EnumMember\n  \vMethod\n  \vFolder\n  \tText\n  \14Reference\n  \rOperator\n  \tFile\n  \18TypeParameter\n  \nColor\n  \fSnippet\n  \fKeyword\n  \tEnum\n  \nValue\n  \tUnit\n  \rProperty\n  \vModule\n  \1\0\2\25store_selection_keys\n<Tab>\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire�\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5����\4\0", "config", "renamer.nvim")
time([[Config for renamer.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\1\vsilent\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\1\vsilent\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\vsilent\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\1\vsilent\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: grapple.nvim
time([[Config for grapple.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\1\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\2\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\3\vselect-\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\1\bkey\3\4\vselect�\4\1\0\b\0 \0P6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\0\0'\3\4\0B\1\2\0026\2\5\0009\2\6\0029\2\a\2)\4\0\0'\5\b\0005\6\n\0009\a\t\1=\a\v\0069\a\f\1=\a\r\6B\2\4\0016\2\5\0009\2\6\0029\2\a\2)\4\0\0'\5\14\0005\6\16\0009\a\15\1=\a\v\0069\a\f\1=\a\r\6B\2\4\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\20\0009\6\21\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\22\0009\6\23\0B\2\4\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\24\0003\6\25\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\26\0003\6\27\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\28\0003\6\29\0004\a\0\0B\2\5\0016\2\5\0009\2\17\0029\2\18\2'\4\19\0'\5\30\0003\6\31\0004\a\0\0B\2\5\0012\0\0�K\0\1\0\0\15<leader>g4\0\15<leader>g3\0\15<leader>g2\0\15<leader>g1\15popup_tags\15<leader>gp\vtoggle\14<leader>m\6n\bset\vkeymap\1\0\1\14nocombine\1\fglacier\30LualineGrappleTagInactive\abg\tgray\afg\1\0\1\14nocombine\1\roff_blue\28LualineGrappleTagActive\16nvim_set_hl\bapi\bvim\22nord.named_colors\1\0\1\nscope\14directory\nsetup\fgrapple\frequire\0", "config", "grapple.nvim")
time([[Config for grapple.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\0\0'\5\6\0B\3\2\0029\3\1\0039\3\a\0035\5\b\0B\3\2\2=\3\a\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\1\0\3\vitalic\2\14underline\2\tbold\2\15highlights\tnord\foptions\1\0\0\1\0\1\20separator_style\nthick\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\15act_as_tab\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'drop.nvim', 'noice.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
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
