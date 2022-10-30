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
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  chadtree = {
    config = { "\27LJ\2\nc\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\22<cmd>CHADopen<CR>\14<Leader>v\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/chadtree",
    url = "https://github.com/ms-jpq/chadtree"
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
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\nstdin\2\bexe\vstyluaS\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmt�\1\1\0\6\0\17\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\15\0005\3\v\0004\4\3\0003\5\n\0>\5\1\4=\4\f\0034\4\3\0003\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\rfiletype\1\0\0\trust\0\blua\1\0\0\0\nsetup\14formatter\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0" },
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
    config = { "\27LJ\2\n�\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0186\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\17globalstatus\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
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
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\a\0\30\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\0035\4\15\0005\5\16\0=\5\n\0045\5\17\0=\5\f\0045\5\18\0005\6\19\0=\6\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\0016\0\0\0'\2\28\0B\0\2\0029\0\29\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\nviews\14popupmenu\16win_options\17winhighlight\1\0\0\1\0\2\vNormal\vNormal\16FloatBorder\19DiagnosticInfo\vborder\fpadding\1\3\0\0\3\0\3\1\1\0\1\nstyle\frounded\1\0\2\vheight\3\n\nwidth\3P\1\0\2\bcol\b50%\brow\3\18\1\0\1\rrelative\veditor\18cmdline_popup\1\0\0\tsize\1\0\2\vheight\tauto\nwidth\3P\rposition\1\0\0\1\0\2\bcol\b50%\brow\3\15\blsp\1\0\0\roverride\1\0\0\1\0\4 cmp.entry.get_documentation\2\"vim.lsp.util.stylize_markdown\0021vim.lsp.util.convert_input_to_markdown_lines\0023vim.lsp.handlers[\"textDocument/signatureHelp\"]\1\nsetup\nnoice\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1�'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3�\5\tkind�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\0�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\tjump\rjumpable\21select_prev_item\fvisible�\v\1\0\f\0@\0r6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0025\3\b\0009\4\t\0015\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0003\b\17\0=\b\19\a=\a\20\0065\a\23\0009\b\21\0019\b\22\bB\b\1\2=\b\24\a9\b\21\0019\b\25\bB\b\1\2=\b\26\a9\b\21\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\21\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\21\0019\b!\b)\n��B\b\2\2=\b\"\a9\b\21\0019\b!\b)\n\4\0B\b\2\2=\b#\a9\b\21\0019\b$\bB\b\1\2=\b%\a9\b\21\0019\b&\bB\b\1\2=\b'\a9\b\21\0019\b(\b5\n+\0009\v)\0019\v*\v=\v,\nB\b\2\2=\b-\a=\a\21\0064\a\t\0005\b.\0>\b\1\a5\b/\0>\b\2\a5\b0\0>\b\3\a5\b1\0>\b\4\a5\b2\0>\b\5\a5\b3\0>\b\6\a5\b4\0>\b\a\a5\b5\0>\b\b\a=\a6\6B\4\2\0019\4\t\0019\0047\4'\0068\0005\a:\0009\b\21\0019\b9\b9\b7\bB\b\1\2=\b\21\a9\b;\0019\b6\b4\n\5\0005\v<\0>\v\1\n5\v=\0>\v\2\n5\v>\0>\v\3\n5\v?\0>\v\4\nB\b\2\2=\b6\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\vconfig\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\n  \tUnit\n  \vStruct\n  \rProperty\n  \nEvent\n  \vModule\n  \rOperator\n  \14Interface\n  \18TypeParameter\n  \nClass\n  \rVariable\n  \nField\n  \16Constructor\n  \rFunction\n  \15EnumMember\n  \vMethod\n  \vFolder\n  \tText\n  \14Reference\n  \tFile\n  \nColor\n  \fSnippet\n  \fKeyword\n  \tEnum\n  \nValue\n  \fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0" },
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
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n�\4\0\1\a\0\25\0+9\1\0\0:\1\1\0019\1\1\0016\2\2\0009\2\3\2'\4\4\0B\2\2\2'\3\5\0&\2\3\2\5\1\2\0X\2\23�9\2\6\0009\2\a\0029\2\b\0029\3\t\0025\4\v\0=\4\n\0039\3\f\0025\4\r\0=\4\n\0039\3\14\2+\4\2\0=\4\15\0039\3\16\0029\3\17\3+\4\2\0=\4\15\0039\3\16\0029\3\17\0035\4\18\0=\4\n\0039\3\19\2'\4\21\0=\4\20\0039\2\22\0'\4\23\0005\5\24\0009\6\6\0009\6\a\6=\6\a\5B\2\3\1+\2\2\0L\2\2\0\1\0\0%workspace/didChangeConfiguration\vnotify\17./Cargo.toml\vsource\nrustc\1\4\0\0\6x\ncheck\18--json-output\17buildScripts\ncargo\venable\14procMacro\1\3\0\0008./build/x86_64-unknown-linux-gnu/stage0/bin/rustfmt\19--edition=2021\frustfmt\1\4\0\0\6x\ncheck\18--json-output\20overrideCommand\16checkOnSave\18rust-analyzer\rsettings\vconfig\trust\tHOME\vgetenv\aos\tname\22workspace_folders�\a\1\0\r\0)\0g6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0025\1\3\0006\2\4\0\18\4\1\0B\2\2\4H\5\23�9\a\5\0\18\t\6\0B\a\2\3\15\0\a\0X\t\18�\18\v\b\0009\t\6\bB\t\2\2\14\0\t\0X\t\r�6\t\a\0'\v\b\0\18\f\6\0&\v\f\vB\t\2\1\18\v\b\0009\t\t\bB\t\2\0016\t\a\0'\v\n\0\18\f\6\0&\v\f\vB\t\2\1F\5\3\3R\5�\1276\2\0\0'\4\v\0B\2\2\0029\3\f\0029\3\2\0034\5\0\0B\3\2\0019\3\r\0029\3\2\0034\5\0\0B\3\2\0019\3\14\0029\3\2\0034\5\0\0B\3\2\0019\3\15\0029\3\2\0034\5\0\0B\3\2\0019\3\16\0029\3\2\0034\5\0\0B\3\2\0019\3\17\0029\3\2\0034\5\0\0B\3\2\0019\3\18\0029\3\2\0034\5\0\0B\3\2\0019\3\19\0029\3\2\0034\5\0\0B\3\2\0019\3\20\0029\3\2\0035\5\22\0003\6\21\0=\6\23\0055\6\26\0005\a\24\0004\b\0\0=\b\25\a=\a\27\0065\a\28\0004\b\0\0=\b\25\a=\a\29\0065\a\30\0=\a\31\0065\a!\0005\b \0004\t\0\0=\t\25\b=\b\"\a=\a#\0065\a$\0=\a%\0065\a&\0=\a'\6=\6(\5B\3\2\1K\0\1\0\rsettings\18rust-analyzer\1\0\1\19linkedProjects@~/Programming/Competitive/GoogleKickStart/rust-project.json\nrustc\1\0\1\vsource\5\ncargo\17buildScripts\1\0\0\1\0\1\venable\1\14procMacro\1\0\1\venable\1\frustfmt\1\0\0\16checkOnSave\1\0\0\20overrideCommand\1\0\0\14on_attach\1\0\0\0\18rust_analyzer\16tailwindcss\16sumneko_lua\fpyright\tltex\thtml\14grammarly\ncssls\vclangd\14lspconfig\15Installed \finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\n\0\0\vclangd\ncssls\14grammarly\thtml\tltex\fpyright\18rust_analyzer\16sumneko_lua\16tailwindcss\nsetup\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\6\0\0\6\0)\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\6\0049\4\n\0045\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\r\0045\5\14\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0006\4\0\0009\4\5\0049\4\6\0049\4\16\0045\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\18\0045\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0006\4\0\0009\4\5\0049\4\6\0049\4\21\0045\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\23\0006\4\0\0009\4\5\0049\4\6\0049\4\24\0045\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\26\0006\4\0\0009\4\5\0049\4\6\0049\4\27\0045\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\30\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\31\0006\4\0\0009\4\5\0049\4\6\0049\4 \0045\5!\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\"\0006\4\0\0009\4#\0049\4$\0045\5%\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3&\0006\4\0\0009\4#\0049\4'\0045\5(\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\21workspace_symbol\agW\1\0\1\vsilent\2\20document_symbol\ag0\1\0\1\vsilent\2\15references\agr\1\0\1\vsilent\2\20type_definition\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2\19implementation\agD\1\0\1\vsilent\2\nhover\6K\1\0\1\vsilent\2\15definition\bbuf\blsp\n<c-j>\6n\bset\vkeymap\bvim\0" },
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
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\22\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\3\0\f\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0009\0\b\0B\0\1\0029\1\t\0005\2\v\0=\2\n\1K\0\1\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire�\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5����\4\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\26\0%6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\b\0'\2\t\0B\0\2\0029\0\n\0004\2\3\0005\3\16\0005\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\22\0005\6\20\0005\a\19\0=\a\21\6=\6\23\5=\5\24\4=\4\25\3>\3\1\2B\0\2\1K\0\1\0\vserver\rsettings\18rust-analyzer\1\0\0\16checkOnSave\1\0\0\1\0\1\fcommand\vclippy\1\0\1\15standalone\2\ntools\1\0\0\16inlay_hints\1\0\3\27parameter_hints_prefix\5\25show_parameter_hints\1\23other_hints_prefix\5\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\frequire\27<cmd>RustRunnables<cr>\16<leader>rrr\21<cmd>RustRun<cr>\15<leader>rr\6n\bset\vkeymap\bvim\0" },
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
    config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0" },
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
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-devicons-emoji"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-devicons-emoji",
    url = "https://github.com/adelarsq/vim-devicons-emoji"
  },
  ["vim-emoji-icon-theme"] = {
    loaded = true,
    path = "/home/rejyr/.local/share/nvim/site/pack/packer/start/vim-emoji-icon-theme",
    url = "https://github.com/adelarsq/vim-emoji-icon-theme"
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
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: chadtree
time([[Config for chadtree]], true)
try_loadstring("\27LJ\2\nc\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\22<cmd>CHADopen<CR>\14<Leader>v\6n\bset\vkeymap\bvim\0", "config", "chadtree")
time([[Config for chadtree]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\r\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0005\1\6\0=\1\5\0006\0\3\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\28<cmd>SymbolsOutline<cr>\15<leader>so\6n\bset\vkeymap\1\0\1\nwidth\0032\20symbols_outline\6g\bvim\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
try_loadstring("\27LJ\2\ns\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0", "config", "nvim-lightbulb")
time([[Config for nvim-lightbulb]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0)\1�\1=\1\5\0K\0\1\0\15timeoutlen\bopt\bvim\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\b\0\f5\0\0\0005\1\6\0'\2\1\0006\3\2\0009\3\3\3'\5\4\0B\3\2\2'\4\5\0&\2\4\2>\2\1\1=\1\a\0L\0\2\0\targs\1\3\0\0\0\6- /.config/stylua/stylua.toml\tHOME\vgetenv\aos\19--config-path \1\0\2\nstdin\2\bexe\vstyluaS\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\18--emit=stdout\19--edition=2021\1\0\2\nstdin\2\bexe\frustfmt�\1\1\0\6\0\17\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\15\0005\3\v\0004\4\3\0003\5\n\0>\5\1\4=\4\f\0034\4\3\0003\5\r\0>\5\1\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\rfiletype\1\0\0\trust\0\blua\1\0\0\0\nsetup\14formatter\frequire\1\0\1\vsilent\2\20<cmd>Format<CR>\14<Leader>f\6n\bset\vkeymap\bvim\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17mini.comment\20mini.cursorword\15mini.pairs\17mini.starter\nsetup\18mini.surround\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\6\0\0\6\0)\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\6\0049\4\n\0045\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\r\0045\5\14\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\15\0006\4\0\0009\4\5\0049\4\6\0049\4\16\0045\5\17\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0006\4\0\0009\4\5\0049\4\6\0049\4\18\0045\5\19\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\20\0006\4\0\0009\4\5\0049\4\6\0049\4\21\0045\5\22\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\23\0006\4\0\0009\4\5\0049\4\6\0049\4\24\0045\5\25\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\26\0006\4\0\0009\4\5\0049\4\6\0049\4\27\0045\5\28\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\29\0006\4\0\0009\4\5\0049\4\6\0049\4\a\0045\5\30\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\31\0006\4\0\0009\4\5\0049\4\6\0049\4 \0045\5!\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\"\0006\4\0\0009\4#\0049\4$\0045\5%\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3&\0006\4\0\0009\4#\0049\4'\0045\5(\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\14goto_next\ag]\1\0\1\vsilent\2\14goto_prev\15diagnostic\ag[\1\0\1\vsilent\2\16code_action\aga\1\0\1\vsilent\2\agd\1\0\1\vsilent\2\21workspace_symbol\agW\1\0\1\vsilent\2\20document_symbol\ag0\1\0\1\vsilent\2\15references\agr\1\0\1\vsilent\2\20type_definition\1\0\1\vsilent\2\19signature_help\n<c-k>\1\0\1\vsilent\2\19implementation\agD\1\0\1\vsilent\2\nhover\6K\1\0\1\vsilent\2\15definition\bbuf\blsp\n<c-j>\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\4\0 \00016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0014\0\0\0005\1\4\0005\2\5\0>\2\2\1=\1\3\0005\1\a\0005\2\b\0>\2\2\1=\1\6\0005\1\n\0005\2\v\0>\2\2\1=\1\t\0005\1\r\0005\2\14\0>\2\2\1=\1\f\0005\1\16\0005\2\17\0>\2\2\1=\1\15\0005\1\19\0005\2\20\0>\2\2\1=\1\18\0005\1\22\0005\2\23\0>\2\2\1=\1\21\0005\1\25\0005\2\26\0>\2\2\1=\1\24\0005\1\28\0005\2\29\0>\2\2\1=\1\27\0006\1\0\0'\3\30\0B\1\2\0029\1\31\1\18\3\0\0B\1\2\1K\0\1\0\17set_mappings\21neoscroll.config\1\2\0\0\b150\1\2\0\0\azb\azb\1\2\0\0\b150\1\2\0\0\azz\azz\1\2\0\0\b150\1\2\0\0\azt\azt\1\4\0\0\t0.10\nfalse\a80\1\2\0\0\vscroll\n<C-e>\1\4\0\0\n-0.10\nfalse\a80\1\2\0\0\vscroll\n<C-y>\1\4\0\0#vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\4\0\0$-vim.api.nvim_win_get_height(0)\ttrue\b250\1\2\0\0\vscroll\n<C-b>\1\4\0\0\18vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-d>\1\4\0\0\19-vim.wo.scroll\ttrue\a80\1\2\0\0\vscroll\n<C-u>\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\23\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\21<cmd>HopLine<cr>\15<leader>jl\1\0\1\vsilent\2\22<cmd>HopChar1<cr>\14<leader>j\1\0\1\vsilent\2\22<cmd>HopChar2<cr>\15<leader>j2\1\0\1\vsilent\2\24<cmd>HopPattern<cr>\15<leader>jp\1\0\1\vsilent\2\21<cmd>HopWord<cr>\15<leader>jw\6n\bset\vkeymap\bvim\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\16\0\0306\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\27<cmd>TodoTelescope<cr>\15<leader>ft\1\0\1\vsilent\2\25<cmd>TodoTrouble<cr>\15<leader>tt\1\0\1\vsilent\2\26<cmd>TodoQuickFix<cr>\15<leader>tq\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0186\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0009\0\3\0\18\2\0\0009\0\4\0'\3\5\0B\0\3\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0005\2\t\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\feol:↴\vappend\14listchars\tlist\bopt\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nk\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\4\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fexclude\15SignColumn\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: true-zen.nvim
time([[Config for true-zen.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17integrations\1\0\0\1\0\1\flualine\2\nsetup\rtrue-zen\frequire\0", "config", "true-zen.nvim")
time([[Config for true-zen.nvim]], false)
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
try_loadstring("\27LJ\2\n�\1\0\0\3\0\f\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0009\0\a\0009\0\b\0B\0\1\0029\1\t\0005\2\v\0=\2\n\1K\0\1\0\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire7\0\2\4\1\2\0\n-\2\0\0009\3\0\0018\2\3\2\14\0\2\0X\3\1�'\2\1\0009\3\0\1&\2\3\2=\2\0\1L\1\2\0\3�\5\tkind�\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\19�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\4\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\0�\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\1�\2�\tjump\rjumpable\21select_prev_item\fvisible�\v\1\0\f\0@\0r6\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\4\0006\1\5\0'\3\6\0B\1\2\0026\2\5\0'\4\a\0B\2\2\0025\3\b\0009\4\t\0015\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\15\0=\a\16\0065\a\18\0003\b\17\0=\b\19\a=\a\20\0065\a\23\0009\b\21\0019\b\22\bB\b\1\2=\b\24\a9\b\21\0019\b\25\bB\b\1\2=\b\26\a9\b\21\0013\n\27\0005\v\28\0B\b\3\2=\b\29\a9\b\21\0013\n\30\0005\v\31\0B\b\3\2=\b \a9\b\21\0019\b!\b)\n��B\b\2\2=\b\"\a9\b\21\0019\b!\b)\n\4\0B\b\2\2=\b#\a9\b\21\0019\b$\bB\b\1\2=\b%\a9\b\21\0019\b&\bB\b\1\2=\b'\a9\b\21\0019\b(\b5\n+\0009\v)\0019\v*\v=\v,\nB\b\2\2=\b-\a=\a\21\0064\a\t\0005\b.\0>\b\1\a5\b/\0>\b\2\a5\b0\0>\b\3\a5\b1\0>\b\4\a5\b2\0>\b\5\a5\b3\0>\b\6\a5\b4\0>\b\a\a5\b5\0>\b\b\a=\a6\6B\4\2\0019\4\t\0019\0047\4'\0068\0005\a:\0009\b\21\0019\b9\b9\b7\bB\b\1\2=\b\21\a9\b;\0019\b6\b4\n\5\0005\v<\0>\v\1\n5\v=\0>\v\2\n5\v>\0>\v\3\n5\v?\0>\v\4\nB\b\2\2=\b6\aB\4\3\0012\0\0�K\0\1\0\1\0\1\tname\20cmdline_history\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\1\tname\20noice_popupmenu\vconfig\1\0\0\vpreset\6:\fcmdline\fsources\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\vcrates\1\0\1\tname\tcalc\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\rConstant\n  \tUnit\n  \vStruct\n  \rProperty\n  \nEvent\n  \vModule\n  \rOperator\n  \14Interface\n  \18TypeParameter\n  \nClass\n  \rVariable\n  \nField\n  \16Constructor\n  \rFunction\n  \15EnumMember\n  \vMethod\n  \vFolder\n  \tText\n  \14Reference\n  \tFile\n  \nColor\n  \fSnippet\n  \fKeyword\n  \tEnum\n  \nValue\n  \fluasnip\bcmp\frequire\0\21menuone,noselect\16completeopt\6o\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>BufferLineCyclePrev<CR>\14<leader>[\1\0\1\vsilent\2!<cmd>BufferLineCycleNext<CR>\14<leader>]\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\nabdmg\16tex_conceal\17conceallevel\25vimtex_quickfix_mode\vsioyek\23vimtex_view_method\nlatex\15tex_flavor\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\6\0\19\0)6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\16\0'\4\17\0005\5\18\0B\0\5\1K\0\1\0\1\0\1\vsilent\2!<cmd>Telescope help_tags<cr>\15<leader>fh\1\0\1\vsilent\2\31<cmd>Telescope buffers<cr>\15<leader>fb\1\0\1\vsilent\2!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\vsilent\2.<cmd>Telescope find_files hidden=true<cr>\16<leader>ffh\1\0\1\vsilent\2\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\1\0\1\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\17globalstatus\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\0156\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\a\0B\0\4\1K\0\1\0005<C-\\><C-n><CMD>lua require(\"FTerm\").toggle()<CR>\6t+<CMD>lua require(\"FTerm\").toggle()<CR>\n<A-i>\6n\bset\vkeymap\bvim\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vrename\frenamer\frequire�\1\1\0\t\0\r\1\0246\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0'\6\a\0003\a\b\0005\b\t\0B\3\5\2>\3\1\0026\3\3\0009\3\4\0039\3\5\0035\5\n\0'\6\v\0003\a\f\0B\3\4\0?\3\0\0B\0\2\1K\0\1\0\0\15<leader>rn\1\3\0\0\6n\6v\1\0\1\vsilent\2\0\t<F2>\6i\bset\vkeymap\bvim\nsetup\frenamer\frequire\5����\4\0", "config", "renamer.nvim")
time([[Config for renamer.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\31<cmd>Telescope neoclip<cr>\14<leader>c\6n\bset\vkeymap\bvim\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n�\4\0\1\a\0\25\0+9\1\0\0:\1\1\0019\1\1\0016\2\2\0009\2\3\2'\4\4\0B\2\2\2'\3\5\0&\2\3\2\5\1\2\0X\2\23�9\2\6\0009\2\a\0029\2\b\0029\3\t\0025\4\v\0=\4\n\0039\3\f\0025\4\r\0=\4\n\0039\3\14\2+\4\2\0=\4\15\0039\3\16\0029\3\17\3+\4\2\0=\4\15\0039\3\16\0029\3\17\0035\4\18\0=\4\n\0039\3\19\2'\4\21\0=\4\20\0039\2\22\0'\4\23\0005\5\24\0009\6\6\0009\6\a\6=\6\a\5B\2\3\1+\2\2\0L\2\2\0\1\0\0%workspace/didChangeConfiguration\vnotify\17./Cargo.toml\vsource\nrustc\1\4\0\0\6x\ncheck\18--json-output\17buildScripts\ncargo\venable\14procMacro\1\3\0\0008./build/x86_64-unknown-linux-gnu/stage0/bin/rustfmt\19--edition=2021\frustfmt\1\4\0\0\6x\ncheck\18--json-output\20overrideCommand\16checkOnSave\18rust-analyzer\rsettings\vconfig\trust\tHOME\vgetenv\aos\tname\22workspace_folders�\a\1\0\r\0)\0g6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0025\1\3\0006\2\4\0\18\4\1\0B\2\2\4H\5\23�9\a\5\0\18\t\6\0B\a\2\3\15\0\a\0X\t\18�\18\v\b\0009\t\6\bB\t\2\2\14\0\t\0X\t\r�6\t\a\0'\v\b\0\18\f\6\0&\v\f\vB\t\2\1\18\v\b\0009\t\t\bB\t\2\0016\t\a\0'\v\n\0\18\f\6\0&\v\f\vB\t\2\1F\5\3\3R\5�\1276\2\0\0'\4\v\0B\2\2\0029\3\f\0029\3\2\0034\5\0\0B\3\2\0019\3\r\0029\3\2\0034\5\0\0B\3\2\0019\3\14\0029\3\2\0034\5\0\0B\3\2\0019\3\15\0029\3\2\0034\5\0\0B\3\2\0019\3\16\0029\3\2\0034\5\0\0B\3\2\0019\3\17\0029\3\2\0034\5\0\0B\3\2\0019\3\18\0029\3\2\0034\5\0\0B\3\2\0019\3\19\0029\3\2\0034\5\0\0B\3\2\0019\3\20\0029\3\2\0035\5\22\0003\6\21\0=\6\23\0055\6\26\0005\a\24\0004\b\0\0=\b\25\a=\a\27\0065\a\28\0004\b\0\0=\b\25\a=\a\29\0065\a\30\0=\a\31\0065\a!\0005\b \0004\t\0\0=\t\25\b=\b\"\a=\a#\0065\a$\0=\a%\0065\a&\0=\a'\6=\6(\5B\3\2\1K\0\1\0\rsettings\18rust-analyzer\1\0\1\19linkedProjects@~/Programming/Competitive/GoogleKickStart/rust-project.json\nrustc\1\0\1\vsource\5\ncargo\17buildScripts\1\0\0\1\0\1\venable\1\14procMacro\1\0\1\venable\1\frustfmt\1\0\0\16checkOnSave\1\0\0\20overrideCommand\1\0\0\14on_attach\1\0\0\0\18rust_analyzer\16tailwindcss\16sumneko_lua\fpyright\tltex\thtml\14grammarly\ncssls\vclangd\14lspconfig\15Installed \finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\n\0\0\vclangd\ncssls\14grammarly\thtml\tltex\fpyright\18rust_analyzer\16sumneko_lua\16tailwindcss\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\21ensure_installed\1\0\0\1\22\0\0\tbash\6c\ncmake\bcpp\bcss\tfish\14gitignore\ago\thelp\thtml\tjson\nlatex\blua\rmarkdown\20markdown_inline\vpython\nregex\trust\ttoml\15typescript\bvim\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\n�\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\21ignore_beginning\2\15completion\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'noice.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
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
