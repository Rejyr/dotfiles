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
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
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
    config = { "\27LJ\2\nú\3\0\0\4\0\18\0\0256\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0005\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\4\0'\2\14\0B\0\2\0029\0\6\0005\2\16\0005\3\15\0=\3\17\2B\0\2\1K\0\1\0\15theme_conf\1\0\0\1\0\0\17session-lens\22post_restore_cmds\1\2\0\0\20NvimTreeRefresh\18pre_save_cmds\1\3\0\0\18NvimTreeClose\vcclose\31auto_session_suppress_dirs\1\5\0\0\a~/\16~/Downloads\6/\t/tmp\1\0\1\14log_level\nerror\nsetup\17auto-session\frequireRblank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions\19sessionoptions\6o\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nW\0\4\b\0\5\0\14\18\6\1\0009\4\0\1'\a\1\0B\4\3\2\15\0\4\0X\5\2Ä'\4\2\0X\5\1Ä'\4\3\0'\5\4\0\18\6\4\0\18\a\0\0&\5\a\5L\5\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatchú\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\2\16diagnostics\rnvim_lsp\20separator_style\nthick\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-cmdline-history/after/plugin/cmp_cmdline_history.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help/after/plugin/cmp_nvim_lsp_signature_help.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
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
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["drop.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\tsnow\nsetup\tdrop\frequire\0" },
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
    config = { "\27LJ\2\nß\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0¿\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\nstdin\2\bexe\rprettier\21try_node_modules\2\5ÄÄ¿ô\4:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\a-s\6-\1\0\2\nstdin\2\bexe\vstylua:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\nstdin\3\1\bexe\rautopep8S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmt…\1\1\0\a\0\15\0\0296\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0004\5\3\0003\6\4\0>\6\1\5=\5\6\0044\5\3\0003\6\a\0>\6\1\5=\5\b\0044\5\3\0003\6\t\0>\6\1\5=\5\n\0044\5\3\0003\6\v\0>\6\1\5=\5\f\4=\4\14\3B\1\2\0012\0\0ÄK\0\1\0\rfiletype\1\0\0\trust\0\vpython\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\0" },
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
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/glance.nvim",
    url = "https://github.com/DNLHC/glance.nvim"
  },
  ["grapple.nvim"] = {
    config = { "\27LJ\2\næ\1\0\0\b\0\n\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0006\4\0\0'\6\3\0B\4\2\0029\4\4\0044\6\4\0009\a\5\0009\a\6\a>\a\1\0069\a\5\0009\a\a\a>\a\2\0069\a\5\0009\a\b\a>\a\3\6B\4\2\2=\4\2\3B\1\2\1K\0\1\0\1\0\0\vstatic\17git_fallback\17lsp_fallback\14resolvers\rfallback\18grapple.scope\nsetup\fgrapple\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/grapple.nvim",
    url = "https://github.com/cbochs/grapple.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
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
    config = { "\27LJ\2\nÇ\a\0\0\a\0\"\0M6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0026\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\n\0005\5\f\0009\6\v\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\14\0005\5\16\0009\6\15\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\17\0005\5\19\0009\6\18\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\20\0005\5\22\0009\6\21\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\23\0005\5\25\0009\6\24\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\26\0005\5\28\0009\6\27\0=\6\r\5B\1\4\0016\1\6\0'\3\29\0B\1\2\0029\1\30\0015\3\31\0005\4 \0=\4!\3B\1\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\31show_current_context_start\2\25show_current_context\2\25use_treesitter_scope\2\nsetup\21indent_blankline\1\0\1\14nocombine\1\ngreen\27IndentBlanklineIndent5\1\0\1\14nocombine\1\tteal\27IndentBlanklineIndent4\1\0\1\14nocombine\1\roff_blue\27IndentBlanklineIndent3\1\0\1\14nocombine\1\fglacier\27IndentBlanklineIndent2\1\0\1\14nocombine\1\tblue\27IndentBlanklineIndent1\afg\1\0\1\14nocombine\1\bred\31IndentBlanklineContextChar\16nvim_set_hl\bapi\22nord.named_colors\frequire\feol:‚Ü¥\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    config = { "\27LJ\2\n∞\1\0\1\a\0\t\0\0239\1\0\0\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1\14\0\1\0X\1\1ÄK\0\1\0009\1\2\0006\2\3\0009\2\4\0029\2\5\0029\4\0\0009\4\1\4B\2\2\0026\3\6\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0\18\6\1\0B\3\3\1K\0\1\0\14on_attach\19lsp-inlayhints\frequire\21get_client_by_id\blsp\bvim\bbuf\14client_id\tdataÎ\1\1\0\5\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0004\3\0\0B\0\3\0016\0\3\0009\0\4\0009\0\a\0'\2\b\0005\3\t\0003\4\n\0=\4\v\3B\0\3\1K\0\1\0\rcallback\0\1\0\1\ngroup\25LspAttach_inlayhints\14LspAttach\24nvim_create_autocmd\25LspAttach_inlayhints\24nvim_create_augroup\bapi\bvim\nsetup\19lsp-inlayhints\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\nr\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0B\1\2\1K\0\1\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nL\0\0\4\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2'\1\3\0\18\2\0\0'\3\4\0&\1\3\1L\1\2\0\6]\vÔÄ´  [\bkey\fgrapple\frequire‹\1\1\0\t\0\15\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\f\0005\4\6\0005\5\n\0003\6\a\0>\6\1\0056\6\0\0'\b\b\0B\6\2\0029\6\t\6=\6\v\5>\5\2\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_b\1\0\0\tcond\1\0\0\vexists\fgrapple\0\1\5\0\0\vbranch\0\tdiff\16diagnostics\foptions\1\0\0\1\0\1\17globalstatus\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmarks\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentoast/marks.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire†\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequireô\2\1\0\4\0\v\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\1\27automatic_installation\2\1\f\0\0\vbashls\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\nsetup\20mason-lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\nÜ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\5\0\0\rautopep8\rprettier\vstylua\vselene\nsetup\25mason-tool-installer\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/mason-tool-installer.nvim",
    url = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-tool-installer.nvim" },
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\3\0\6\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\nsetup\18mini.surround\frequire\0" },
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
  ["noice.nvim"] = {
    config = { "\27LJ\2\næ\5\0\0\a\0 \0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\0035\4\15\0005\5\16\0=\5\n\0045\5\17\0=\5\f\0045\5\18\0005\6\19\0=\6\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\0016\0\0\0'\2\28\0B\0\2\0029\0\29\0'\2\1\0B\0\2\0016\0\0\0'\2\30\0B\0\2\0029\0\2\0005\2\31\0B\0\2\1K\0\1\0\1\0\1\22background_colour\f#1a1b26\vnotify\19load_extension\14telescope\nviews\14popupmenu\16win_options\17winhighlight\1\0\0\1\0\2\vNormal\vNormal\16FloatBorder\19DiagnosticInfo\vborder\fpadding\1\3\0\0\3\0\3\1\1\0\1\nstyle\frounded\1\0\2\nwidth\3P\vheight\3\n\1\0\2\bcol\b50%\brow\3\18\1\0\1\rrelative\veditor\18cmdline_popup\1\0\0\tsize\1\0\2\nwidth\3P\vheight\tauto\rposition\1\0\0\1\0\2\bcol\b50%\brow\3\15\blsp\1\0\0\roverride\1\0\0\1\0\0043vim.lsp.handlers[\"textDocument/signatureHelp\"]\0011vim.lsp.util.convert_input_to_markdown_lines\2\"vim.lsp.util.stylize_markdown\2 cmp.entry.get_documentation\2\nsetup\nnoice\frequire\0" },
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
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "cmp-nvim-lsp-signature-help", "cmp-nvim-lua", "cmp-path", "cmp_luasnip", "tabout.nvim", "cmp-calc", "cmp-cmdline-history", "cmp-cmdline", "cmp-nvim-lsp" },
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirec\0\2\5\1\5\0\r-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0=\2\0\1\18\4\0\0009\2\3\0B\2\2\0029\2\4\2=\2\2\1L\1\2\0\3¿\vdetail\24get_completion_item\tmenu\5\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleº\f\1\0\f\0F\0|6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0026\3\5\0'\5\b\0B\3\2\0029\3\t\0035\5\n\0B\3\2\0019\3\v\0029\3\f\0035\5\r\0B\3\2\0015\3\14\0009\4\15\0015\6\19\0005\a\17\0003\b\16\0=\b\18\a=\a\20\0065\a\21\0=\a\22\0065\a\24\0005\b\23\0=\b\25\a3\b\26\0=\b\27\a=\a\28\0065\a\31\0009\b\29\0019\b\30\bB\b\1\2=\b \a9\b\29\0019\b!\bB\b\1\2=\b\"\a9\b\29\0013\n#\0005\v$\0B\b\3\2=\b%\a9\b\29\0013\n&\0005\v'\0B\b\3\2=\b(\a9\b\29\0019\b)\b)\n¸ˇB\b\2\2=\b*\a9\b\29\0019\b)\b)\n\4\0B\b\2\2=\b+\a9\b\29\0019\b,\bB\b\1\2=\b-\a9\b\29\0019\b.\bB\b\1\2=\b/\a9\b\29\0019\b0\b5\n3\0009\v1\0019\v2\v=\v4\nB\b\2\2=\b5\a=\a\29\0064\a\b\0005\b6\0>\b\1\a5\b7\0>\b\2\a5\b8\0>\b\3\a5\b9\0>\b\4\a5\b:\0>\b\5\a5\b;\0>\b\6\a5\b<\0>\b\a\a=\a=\6B\4\2\0019\4\15\0019\4>\4'\6?\0005\aA\0009\b\29\0019\b@\b9\b>\bB\b\1\2=\b\29\a9\b\v\0019\b=\b4\n\5\0005\vB\0>\v\1\n5\vC\0>\v\2\n5\vD\0>\v\3\n5\vE\0>\v\4\nB\b\2\2=\b=\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\fKeyword\nÓ≠¢  \nValue\nÓ™ï  \rOperator\nÓ≠§  \rConstant\nÓ≠ù  \18TypeParameter\nÓ™í  \nEvent\nÓ™Ü  \vStruct\nÓ™ë  \15EnumMember\nÓ™ï  \vFolder\nÓ™É  \14Reference\nÓ™î  \tFile\nÓ©ª  \nColor\nÓ≠ú  \fSnippet\nÓ≠¶  \tEnum\nÓ™ï  \rFunction\nÓ™å  \tUnit\nÓ™ñ  \rProperty\nÓ≠•  \vModule\nÓ™ã  \14Interface\nÓ≠°  \nClass\nÓ≠õ  \rVariable\nÓ™à  \nField\nÓ≠ü  \16Constructor\nÓ™å  \vMethod\nÓ™å  \tText\nÓ™ì  \1\0\2\25store_selection_keys\n<Tab>\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-config-local"] = {
    config = { "\27LJ\2\nı\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\24autocommands_create\2\20commands_create\2\19lookup_parents\1\vsilent\1\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0" },
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
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\nf\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-rooter.lua"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vmanual\2\nsetup\16nvim-rooter\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-rooter.lua",
    url = "https://github.com/notjedi/nvim-rooter.lua"
  },
  ["nvim-tetris"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tetris",
    url = "https://github.com/alec-gibson/nvim-tetris"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-context" },
    config = { "\27LJ\2\nó\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  nvimesweeper = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvimesweeper",
    url = "https://github.com/seandewar/nvimesweeper"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["peek.nvim"] = {
    config = { "\27LJ\2\nß\1\0\0\6\0\t\0\0216\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\4\0'\5\5\0B\3\2\0029\3\6\0034\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0006\3\4\0'\5\5\0B\3\2\0029\3\b\0034\4\0\0B\0\4\1K\0\1\0\nclose\14PeekClose\topen\tpeek\frequire\rPeekOpen\29nvim_create_user_command\bapi\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/peek.nvim",
    url = "https://github.com/toppair/peek.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["renamer.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\frenamer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["root-switcher.nvim"] = {
    config = { "\27LJ\2\né\1\0\0\6\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\3=\3\6\2B\0\2\1K\0\1\0\17project_root\rget_root\16nvim-rooter\1\0\1\18starting_mode\fproject\nsetup\18root-switcher\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/root-switcher.nvim",
    url = "https://github.com/Rejyr/root-switcher.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\nÓ\2\0\0\b\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0005\3\b\0005\4\3\0005\5\4\0=\5\5\0045\5\6\0=\5\a\4=\4\t\0035\4\n\0005\5\14\0005\6\f\0005\a\v\0=\a\r\6=\6\15\5=\5\16\4=\4\17\3>\3\1\2B\0\2\1K\0\1\0\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\1\15standalone\2\ntools\1\0\0\16inlay_hints\1\0\4\25show_parameter_hints\1\tauto\1\23other_hints_prefix\5\27parameter_hints_prefix\5\14runnables\1\0\1\18use_telescope\2\1\0\2\17autoSetHints\2\23hover_with_actions\2\nsetup\15rust-tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["session-lens"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/session-lens",
    url = "https://github.com/rmagatti/session-lens"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\nn\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0K\0\1\0\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nÎ\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21enable_backwards\2\15act_as_tab\2\21act_as_shift_tab\1\15completion\2\21ignore_beginning\2\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
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
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle", "Trouble" },
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
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
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  vimtex = {
    config = { "\27LJ\2\n¿\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^glance"] = "glance.nvim",
  ["^renamer"] = "renamer.nvim",
  ["^session%-lens"] = "session-lens",
  ["^telescope"] = "telescope.nvim",
  ["^trouble"] = "trouble.nvim",
  ["^which%-key"] = "which-key.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: marks.nvim
time([[Config for marks.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmarks\frequire\0", "config", "marks.nvim")
time([[Config for marks.nvim]], false)
-- Config for: grapple.nvim
time([[Config for grapple.nvim]], true)
try_loadstring("\27LJ\2\næ\1\0\0\b\0\n\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0006\4\0\0'\6\3\0B\4\2\0029\4\4\0044\6\4\0009\a\5\0009\a\6\a>\a\1\0069\a\5\0009\a\a\a>\a\2\0069\a\5\0009\a\b\a>\a\3\6B\4\2\2=\4\2\3B\1\2\1K\0\1\0\1\0\0\vstatic\17git_fallback\17lsp_fallback\14resolvers\rfallback\18grapple.scope\nsetup\fgrapple\frequire\0", "config", "grapple.nvim")
time([[Config for grapple.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nW\0\4\b\0\5\0\14\18\6\1\0009\4\0\1'\a\1\0B\4\3\2\15\0\4\0X\5\2Ä'\4\2\0X\5\1Ä'\4\3\0'\5\4\0\18\6\4\0\18\a\0\0&\5\a\5L\5\2\0\6 \tÔÅ± \tÔÅú \nerror\nmatchú\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\2\16diagnostics\rnvim_lsp\20separator_style\nthick\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: peek.nvim
time([[Config for peek.nvim]], true)
try_loadstring("\27LJ\2\nß\1\0\0\6\0\t\0\0216\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\4\0'\5\5\0B\3\2\0029\3\6\0034\4\0\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0006\3\4\0'\5\5\0B\3\2\0029\3\b\0034\4\0\0B\0\4\1K\0\1\0\nclose\14PeekClose\topen\tpeek\frequire\rPeekOpen\29nvim_create_user_command\bapi\bvim\0", "config", "peek.nvim")
time([[Config for peek.nvim]], false)
-- Config for: nvim-rooter.lua
time([[Config for nvim-rooter.lua]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\vmanual\2\nsetup\16nvim-rooter\frequire\0", "config", "nvim-rooter.lua")
time([[Config for nvim-rooter.lua]], false)
-- Config for: root-switcher.nvim
time([[Config for root-switcher.nvim]], true)
try_loadstring("\27LJ\2\né\1\0\0\6\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\3=\3\6\2B\0\2\1K\0\1\0\17project_root\rget_root\16nvim-rooter\1\0\1\18starting_mode\fproject\nsetup\18root-switcher\frequire\0", "config", "root-switcher.nvim")
time([[Config for root-switcher.nvim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÇ\a\0\0\a\0\"\0M6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0026\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\n\0005\5\f\0009\6\v\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\14\0005\5\16\0009\6\15\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\17\0005\5\19\0009\6\18\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\20\0005\5\22\0009\6\21\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\23\0005\5\25\0009\6\24\0=\6\r\5B\1\4\0016\1\0\0009\1\b\0019\1\t\1)\3\0\0'\4\26\0005\5\28\0009\6\27\0=\6\r\5B\1\4\0016\1\6\0'\3\29\0B\1\2\0029\1\30\0015\3\31\0005\4 \0=\4!\3B\1\2\1K\0\1\0\24char_highlight_list\1\6\0\0\27IndentBlanklineIndent1\27IndentBlanklineIndent2\27IndentBlanklineIndent3\27IndentBlanklineIndent4\27IndentBlanklineIndent5\1\0\3\31show_current_context_start\2\25show_current_context\2\25use_treesitter_scope\2\nsetup\21indent_blankline\1\0\1\14nocombine\1\ngreen\27IndentBlanklineIndent5\1\0\1\14nocombine\1\tteal\27IndentBlanklineIndent4\1\0\1\14nocombine\1\roff_blue\27IndentBlanklineIndent3\1\0\1\14nocombine\1\fglacier\27IndentBlanklineIndent2\1\0\1\14nocombine\1\tblue\27IndentBlanklineIndent1\afg\1\0\1\14nocombine\1\bred\31IndentBlanklineContextChar\16nvim_set_hl\bapi\22nord.named_colors\frequire\feol:‚Ü¥\vappend\14listchars\tlist\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\nú\3\0\0\4\0\18\0\0256\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0005\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\4\0'\2\14\0B\0\2\0029\0\6\0005\2\16\0005\3\15\0=\3\17\2B\0\2\1K\0\1\0\15theme_conf\1\0\0\1\0\0\17session-lens\22post_restore_cmds\1\2\0\0\20NvimTreeRefresh\18pre_save_cmds\1\3\0\0\18NvimTreeClose\vcclose\31auto_session_suppress_dirs\1\5\0\0\a~/\16~/Downloads\6/\t/tmp\1\0\1\14log_level\nerror\nsetup\17auto-session\frequireRblank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions\19sessionoptions\6o\bvim\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-config-local
time([[Config for nvim-config-local]], true)
try_loadstring("\27LJ\2\nı\1\0\0\6\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0026\3\6\0009\3\a\0039\3\b\3'\5\t\0B\3\2\2'\4\n\0&\3\4\3=\3\v\2B\0\2\1K\0\1\0\rhashfile\18/config-local\tdata\fstdpath\afn\bvim\17config_files\1\0\4\24autocommands_create\2\20commands_create\2\19lookup_parents\1\vsilent\1\1\3\0\0\15.vimrc.lua\v.vimrc\nsetup\17config-local\frequire\0", "config", "nvim-config-local")
time([[Config for nvim-config-local]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nó\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\23\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\3\0\6\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: lsp-inlayhints.nvim
time([[Config for lsp-inlayhints.nvim]], true)
try_loadstring("\27LJ\2\n∞\1\0\1\a\0\t\0\0239\1\0\0\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1\14\0\1\0X\1\1ÄK\0\1\0009\1\2\0006\2\3\0009\2\4\0029\2\5\0029\4\0\0009\4\1\4B\2\2\0026\3\6\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0\18\6\1\0B\3\3\1K\0\1\0\14on_attach\19lsp-inlayhints\frequire\21get_client_by_id\blsp\bvim\bbuf\14client_id\tdataÎ\1\1\0\5\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0004\3\0\0B\0\3\0016\0\3\0009\0\4\0009\0\a\0'\2\b\0005\3\t\0003\4\n\0=\4\v\3B\0\3\1K\0\1\0\rcallback\0\1\0\1\ngroup\25LspAttach_inlayhints\14LspAttach\24nvim_create_autocmd\25LspAttach_inlayhints\24nvim_create_augroup\bapi\bvim\nsetup\19lsp-inlayhints\frequire\0", "config", "lsp-inlayhints.nvim")
time([[Config for lsp-inlayhints.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n–\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nß\1\0\0\6\1\5\1\v5\0\0\0005\1\1\0-\2\0\0009\2\2\2-\4\0\0009\4\3\4B\4\1\0A\2\0\0?\2\0\0=\1\4\0L\0\2\0\0¿\targs!get_current_buffer_file_path\16escape_path\1\2\0\0\21--stdin-filepath\1\0\3\nstdin\2\bexe\rprettier\21try_node_modules\2\5ÄÄ¿ô\4:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\a-s\6-\1\0\2\nstdin\2\bexe\vstylua:\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\nstdin\3\1\bexe\rautopep8S\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmt…\1\1\0\a\0\15\0\0296\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\r\0005\4\5\0004\5\3\0003\6\4\0>\6\1\5=\5\6\0044\5\3\0003\6\a\0>\6\1\5=\5\b\0044\5\3\0003\6\t\0>\6\1\5=\5\n\0044\5\3\0003\6\v\0>\6\1\5=\5\f\4=\4\14\3B\1\2\0012\0\0ÄK\0\1\0\rfiletype\1\0\0\trust\0\vpython\0\blua\0\bcss\1\0\0\0\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: lsp_lines.nvim
time([[Config for lsp_lines.nvim]], true)
try_loadstring("\27LJ\2\nr\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0B\1\2\1K\0\1\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\bvim\nsetup\14lsp_lines\frequire\0", "config", "lsp_lines.nvim")
time([[Config for lsp_lines.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\nv\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\2\18extended_mode\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\3\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0K\0\1\0\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\4\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2'\1\3\0\18\2\0\0'\3\4\0&\1\3\1L\1\2\0\6]\vÔÄ´  [\bkey\fgrapple\frequire‹\1\1\0\t\0\15\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\f\0005\4\6\0005\5\n\0003\6\a\0>\6\1\0056\6\0\0'\b\b\0B\6\2\0029\6\t\6=\6\v\5>\5\2\4=\4\r\3=\3\14\2B\0\2\1K\0\1\0\rsections\14lualine_b\1\0\0\tcond\1\0\0\vexists\fgrapple\0\1\5\0\0\vbranch\0\tdiff\16diagnostics\foptions\1\0\0\1\0\1\17globalstatus\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\nf\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd mason.nvim ]]

-- Config for: mason.nvim
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14providers\1\0\0\1\2\0\0\27mason.providers.client\nsetup\nmason\frequire\0", "config", "mason.nvim")

vim.cmd [[ packadd mason-tool-installer.nvim ]]

-- Config for: mason-tool-installer.nvim
try_loadstring("\27LJ\2\nÜ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\5\0\0\rautopep8\rprettier\vstylua\vselene\nsetup\25mason-tool-installer\frequire\0", "config", "mason-tool-installer.nvim")

vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\n?\0\1\4\0\3\0\b6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire†\1\0\0\a\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\v\0005\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\16sumneko_lua\14lspconfig\frequireô\2\1\0\4\0\v\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\1\27automatic_installation\2\1\f\0\0\vbashls\vclangd\ncssls\14grammarly\thtml\vjsonls\tltex\fpyright\18rust_analyzer\16sumneko_lua\vtexlab\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirec\0\2\5\1\5\0\r-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1Ä'\2\1\0=\2\0\1\18\4\0\0009\2\3\0B\2\2\0029\2\4\2=\2\2\1L\1\2\0\3¿\vdetail\24get_completion_item\tmenu\5\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\2¿\tjump\rjumpable\21select_prev_item\fvisibleº\f\1\0\f\0F\0|6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0026\3\5\0'\5\b\0B\3\2\0029\3\t\0035\5\n\0B\3\2\0019\3\v\0029\3\f\0035\5\r\0B\3\2\0015\3\14\0009\4\15\0015\6\19\0005\a\17\0003\b\16\0=\b\18\a=\a\20\0065\a\21\0=\a\22\0065\a\24\0005\b\23\0=\b\25\a3\b\26\0=\b\27\a=\a\28\0065\a\31\0009\b\29\0019\b\30\bB\b\1\2=\b \a9\b\29\0019\b!\bB\b\1\2=\b\"\a9\b\29\0013\n#\0005\v$\0B\b\3\2=\b%\a9\b\29\0013\n&\0005\v'\0B\b\3\2=\b(\a9\b\29\0019\b)\b)\n¸ˇB\b\2\2=\b*\a9\b\29\0019\b)\b)\n\4\0B\b\2\2=\b+\a9\b\29\0019\b,\bB\b\1\2=\b-\a9\b\29\0019\b.\bB\b\1\2=\b/\a9\b\29\0019\b0\b5\n3\0009\v1\0019\v2\v=\v4\nB\b\2\2=\b5\a=\a\29\0064\a\b\0005\b6\0>\b\1\a5\b7\0>\b\2\a5\b8\0>\b\3\a5\b9\0>\b\4\a5\b:\0>\b\5\a5\b;\0>\b\6\a5\b<\0>\b\a\a=\a=\6B\4\2\0019\4\15\0019\4>\4'\6?\0005\aA\0009\b\29\0019\b@\b9\b>\bB\b\1\2=\b\29\a9\b\v\0019\b=\b4\n\5\0005\vB\0>\v\1\n5\vC\0>\v\2\n5\vD\0>\v\3\n5\vE\0>\v\4\nB\b\2\2=\b=\aB\4\3\0012\0\0ÄK\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\fKeyword\nÓ≠¢  \nValue\nÓ™ï  \rOperator\nÓ≠§  \rConstant\nÓ≠ù  \18TypeParameter\nÓ™í  \nEvent\nÓ™Ü  \vStruct\nÓ™ë  \15EnumMember\nÓ™ï  \vFolder\nÓ™É  \14Reference\nÓ™î  \tFile\nÓ©ª  \nColor\nÓ≠ú  \fSnippet\nÓ≠¶  \tEnum\nÓ™ï  \rFunction\nÓ™å  \tUnit\nÓ™ñ  \rProperty\nÓ≠•  \vModule\nÓ™ã  \14Interface\nÓ≠°  \nClass\nÓ≠õ  \rVariable\nÓ™à  \nField\nÓ≠ü  \16Constructor\nÓ™å  \vMethod\nÓ™å  \tText\nÓ™ì  \1\0\2\25store_selection_keys\n<Tab>\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths ~/.config/nvim/lua/snippets\tload\29luasnip.loaders.from_lua\fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")

vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-lsp-signature-help ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd cmp-calc ]]
vim.cmd [[ packadd cmp-cmdline-history ]]
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nÎ\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21enable_backwards\2\15act_as_tab\2\21act_as_shift_tab\1\15completion\2\21ignore_beginning\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-cmdline ]]
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd nvim-treesitter-context ]]

-- Config for: nvim-treesitter-context
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Trouble', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble' }, _G.packer_plugins)
          return vim.fn.getcompletion('Trouble ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'noice.nvim', 'drop.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'trouble.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/rejyr/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
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
