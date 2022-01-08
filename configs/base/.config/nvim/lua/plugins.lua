-- auto packer compile
vim.cmd [[
  augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

return require('packer').startup(function(use)
	-- package manager - packer
	use 'wbthomason/packer.nvim'

	-- speed up loading time
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'

	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

	-- tetris lmao
	use 'alec-gibson/nvim-tetris'

	--
	--
	-- GUI
	--
	--

	-- startup
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function()
			require('alpha').setup(require('alpha.themes.startify').opts)
		end,
	}

	-- which key for commands
	use {
		'folke/which-key.nvim',
		config = function()
			require('which-key').setup()
			vim.cmd [[set timeoutlen=500]]
		end,
	}

	-- -- command/search completion
	-- use {
	-- 	'gelguy/wilder.nvim',
	-- 	run = ':UpdateRemotePlugins',
	-- 	config = function()
	-- 		vim.cmd [[call wilder#setup({'modes': [':', '/', '?']})]]
	-- 	end,
	-- }

	-- show indent
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			vim.opt.list = true
			vim.opt.listchars:append 'space:⋅'
			vim.opt.listchars:append 'eol:↴'

			require('indent_blankline').setup {
				space_char_blankline = ' ',
				show_current_context = true,
				show_current_context_start = true,
			}
		end,
	}

	-- function signature context
	use {
		'romgrk/nvim-treesitter-context',
		requires = {
			'nvim-treesitter/nvim-treesitter',
		},
	}

	-- tree view for symbols
	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			vim.g.symbols_outline = {
				width = 50,
			}
			vim.api.nvim_set_keymap('n', '<leader>so', '<cmd>SymbolsOutline<cr>', { noremap = true, silent = true })
		end,
	}

	-- floating terminal
	use {
		'numToStr/FTerm.nvim',
		config = function()
			vim.api.nvim_set_keymap(
				'n',
				'<A-i>',
				'<CMD>lua require("FTerm").toggle()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				't',
				'<A-i>',
				'<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>',
				{ noremap = true, silent = true }
			)
		end,
	}

	-- CHAD filesystem
	use {
		'ms-jpq/chadtree',
		branch = 'chad',
		run = 'python3 -m chadtree deps',
		config = function()
			vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>CHADopen<CR>', { noremap = true, silent = true })
		end,
	}

	--
	-- git
	--

	-- use {
	-- 	'tanvirtin/vgit.nvim',
	-- 	event = 'BufWinEnter',
	-- 	requires = {
	-- 		'nvim-lua/plenary.nvim',
	-- 	},
	-- 	config = function()
	-- 		require('vgit').setup()
	-- 	end,
	-- }
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
		config = function()
			require('gitsigns').setup()
		end,
		-- tag = 'release' -- To use the latest release
	}
	use {
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim',
	}

	--
	-- tab/status lines
	--
	-- statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup()
		end,
	}

	-- tabline
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('bufferline').setup {}

			-- keybinds
			vim.api.nvim_set_keymap('n', '<leader>[', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>]', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
		end,
	}

	--
	--
	-- Color
	--
	--

	-- compatibility
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
	use 'folke/lsp-colors.nvim'

	-- icons
	use 'ryanoasis/vim-devicons'
	use 'adelarsq/vim-devicons-emoji'
	use 'adelarsq/vim-emoji-icon-theme'
	use 'kyazdani42/nvim-web-devicons'

	-- colorschemes
	-- use 'RRethy/nvim-base16'
	-- use 'folke/tokyonight.nvim'
	use 'rebelot/kanagawa.nvim'
	-- use 'catppuccin/nvim'

	--
	--
	-- eye candy
	--
	--
	-- smooth scrolling
	use {
		'karb94/neoscroll.nvim',
		config = function()
			require('neoscroll').setup()
		end,
	}

	-- zen mode
	use {
		'folke/zen-mode.nvim',
		config = function()
			require('zen-mode').setup()
		end,
	}
	use {
		'folke/twilight.nvim',
		config = function()
			require('twilight').setup()
		end,
	}

	-- transparent neovim
	use {
		'xiyaowong/nvim-transparent',
		disable = true,
		config = function()
			require('transparent').setup {
				enable = true,
				exclude = {
					SignColumn,
				},
			}
		end,
	}

	-- rainbow parentheses
	use {
		'p00f/nvim-ts-rainbow',
		config = function()
			require('nvim-treesitter.configs').setup {
				rainbow = {
					enable = true,
					-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
					extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
					max_file_lines = nil, -- Do not enable for files with more than n lines, int
					-- colors = {}, -- table of hex strings
					-- termcolors = {} -- table of colour name strings
				},
			}
		end,
	}

	--
	-- highlight
	--
	-- highlight yank
	use 'machakann/vim-highlightedyank'

	-- highlight range in command
	use 'winston0410/cmd-parser.nvim'

	-- underline words/lines on cursor
	use 'yamatsum/nvim-cursorline'

	--
	--
	-- Editor
	--
	--
	-- move to directory
	use 'airblade/vim-rooter'

	-- autosave
	use 'Pocco81/AutoSave.nvim'

	-- tidy whitespace
	use {
		'McAuleyPenney/tidy.nvim',
		event = 'BufWritePre',
	}

	-- comment
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	}

	-- auto-pair
	use 'jiangmiao/auto-pairs'
	use 'machakann/vim-sandwich'

	-- surround
	use {
		'blackCauldron7/surround.nvim',
		config = function()
			require('surround').setup { mappings_style = 'surround' }
		end,
	}

	-- open file at alst place
	use {
		'ethanholz/nvim-lastplace',
		config = function()
			require('nvim-lastplace').setup()
		end,
	}

	-- session management
	use {
		'Shatur/neovim-session-manager',
		requires = { 'nvim-telescope/telescope.nvim' },
		config = function()
			require('telescope').load_extension('sessions')
		end
	}

	-- better registers
	use {
		'AckslD/nvim-neoclip.lua',
		requires = { 'nvim-telescope/telescope.nvim' },
		config = function()
			require('neoclip').setup()
			require('telescope').load_extension 'neoclip'
			vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>Telescope neoclip<cr>', { noremap = true, silent = true })
		end,
	}

	-- tabout
	use {
		'abecodes/tabout.nvim',
		branch = 'master',
		config = function()
			require('tabout').setup {
				tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
				backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
				act_as_tab = true, -- shift content if tab out is not possible
				act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
				enable_backwards = true, -- well ...
				completion = true, -- if the tabkey is used in a completion pum
				tabouts = {
					{ open = "'", close = "'" },
					{ open = '"', close = '"' },
					{ open = '`', close = '`' },
					{ open = '(', close = ')' },
					{ open = '[', close = ']' },
					{ open = '{', close = '}' },
				},
				ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
				exclude = {}, -- tabout will ignore these filetypes
			}
		end,
	}

	-- vscode ui style renamer
	use {
		'filipdutescu/renamer.nvim',
		branch = 'master',
		nequires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('renamer').setup {
				vim.api.nvim_set_keymap(
					'i',
					'<F2>',
					'<cmd>lua require("renamer").rename()<CR>',
					{ noremap = true, silent = true }
				),
				vim.api.nvim_set_keymap(
					'n',
					'<Leader>rn',
					'<cmd>lua require("renamer").rename()<CR>',
					{ noremap = true, silent = true }
				),
				vim.api.nvim_set_keymap(
					'v',
					'<Leader>rn',
					'<cmd>lua require("renamer").rename()<CR>',
					{ noremap = true, silent = true }
				),
			}
		end,
	}

	-- Formmater
	use {
		'mhartington/formatter.nvim',
		config = function()
			-- keybind
			vim.api.nvim_set_keymap('n', '<Leader>f', [[<cmd>Format<CR>]], { noremap = true, silent = true })
			require('formatter').setup {
				filetype = {
					lua = {
						function()
							return {
								exe = 'stylua',
								args = {
									'--config-path ' .. os.getenv 'HOME' .. '/.config/stylua/stylua.toml',
									'-',
								},
								stdin = true,
							}
						end,
					},
					rust = {
						-- Rustfmt
						function()
							return {
								exe = 'rustfmt',
								args = { '--emit=stdout' },
								stdin = true,
							}
						end,
					},
				},
			}
		end,
	}

	-- movement
	use {
		'phaazon/hop.nvim',
		branch = 'v1', -- optional but strongly recommended
		config = function()
			require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
			-- keybinds
			vim.api.nvim_set_keymap('n', '<leader>j', '<cmd>HopWord<cr>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>jp', '<cmd>HopPattern<cr>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>j1', '<cmd>HopChar1<cr>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>j2', '<cmd>HopChar2<cr>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap('n', '<leader>jl', '<cmd>HopLine<cr>', { noremap = true, silent = true })
		end,
	}

	-- Fuzzy Finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			vim.api.nvim_set_keymap(
				'n',
				'<leader>ff',
				'<cmd>Telescope find_files<cr>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'<leader>ffh',
				'<cmd>Telescope find_files hidden=true<cr>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'<leader>fg',
				'<cmd>Telescope live_grep<cr>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap(
				'n',
				'<leader>fh',
				'<cmd>Telescope help_tags<cr>',
				{ noremap = true, silent = true }
			)
		end,
	}

	-- debugging TODO: set up
	use {
		'rcarriga/nvim-dap-ui',
		requires = { 'mfussenegger/nvim-dap' },
	}

	--
	--
	-- lsp/language
	--
	--
	-- lightbulb for code actions
	use {
		'kosayoda/nvim-lightbulb',
		config = function()
			vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
		end,
	}

	-- show diagnosticsc / lsp stuff
	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>TroubleToggle<cr>', { noremap = true, silent = true })
			require('trouble').setup()
		end,
	}

	-- spellcheck
	use {
		'lewis6991/spellsitter.nvim',
		config = function()
			require('spellsitter').setup()
		end,
	}

	-- show function signature
	use {
		'ray-x/lsp_signature.nvim',
		config = function()
			require('lsp_signature').setup()
		end,
	}

	-- install lsp servers
	use {
		'williamboman/nvim-lsp-installer',
		requires = { 'neovim/nvim-lspconfig' },
		config = function()
			local lsp_installer = require 'nvim-lsp-installer'
			lsp_installer.on_server_ready(function(server)
				local servers = {
					'pyright',
					'sumneko_lua',
				}

				-- install servers
				for _, name in pairs(servers) do
					local server_is_found, server = lsp_installer.get_server(name)
					if server_is_found then
						if not server:is_installed() then
							print('Installing ' .. name)
							server:install()
						end
					end
				end

				local opts = {}
				server:setup(opts)
			end)
		end,
	}

	-- Collection of common configurations for the Nvim LSP client
	use {
		'neovim/nvim-lspconfig',
		config = function()
			-- keybinds
			vim.api.nvim_set_keymap(
				'n',
				'<c-j>',
				'<cmd>lua vim.lsp.buf.definition()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
			vim.api.nvim_set_keymap(
				'n',
				'gD',
				'<cmd>lua vim.lsp.buf.implementation()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'<c-k>',
				'<cmd>lua vim.lsp.buf.signature_help()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'gD',
				'<cmd>lua vim.lsp.buf.type_definition()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'gr',
				'<cmd>lua vim.lsp.buf.references()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'g0',
				'<cmd>lua vim.lsp.buf.document_symbol()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'gW',
				'<cmd>lua vim.lsp.buf.workspace_symbol()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'gd',
				'<cmd>lua vim.lsp.buf.definition()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'ga',
				'<cmd>lua vim.lsp.buf.code_action()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'g[',
				'<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				'n',
				'g]',
				'<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
				{ noremap = true, silent = true }
			)
		end,
	}

	-- Autocompletion framework
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-calc',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/vim-vsnip', -- snippet engine
		},
		config = function()
			local cmp = require 'cmp'
			cmp.setup {
				snippet = {
					expand = function(args)
						vim.fn['vsnip#anonymous'](args.body)
					end,
				},
				mapping = {
					['<C-p>'] = cmp.mapping.select_prev_item(),
					['<C-n>'] = cmp.mapping.select_next_item(),
					-- Add tab support
					['<S-Tab>'] = cmp.mapping.select_prev_item(),
					['<Tab>'] = cmp.mapping.select_next_item(),
					['<C-d>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.close(),
					['<CR>'] = cmp.mapping.confirm {
						behavior = cmp.ConfirmBehavior.Insert,
						select = true,
					},
				},

				-- Installed sources
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'nvim_lua' },
					{ name = 'luasnip' },
					{ name = 'vsnip' },
					{ name = 'path' },
					{ name = 'buffer' },
					{ name = 'calc' },
					{ name = 'crates' },
				},
			}
		end,
	}

	--
	-- Rust
	--

	-- help manage rust depedencies
	use {
		'saecki/crates.nvim',
		event = { 'BufRead Cargo.toml' },
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}

	-- Adds extra functionality over rust analyzer
	use {
		'simrat39/rust-tools.nvim',
		requires = { 'neovim/nvim-lspconfig' },
		ft = 'rust',
		config = function()
			vim.api.nvim_set_keymap('n', '<leader>rr', '<cmd>RustRun<cr>', {noremap = true})
			vim.api.nvim_set_keymap('n', '<leader>rrr', '<cmd>RustRunnnables<cr>', {noremap = true})
			--
			require('rust-tools').setup {
				{
					tools = {
						autoSetHints = true,
						hover_with_actions = true,
						runnables = {
							use_telescope = true,
						},
						inlay_hints = {
							show_parameter_hints = false,
							parameter_hints_prefix = '',
							other_hints_prefix = '',
						},
					},

					-- all the opts to send to nvim-lspconfig
					-- these override the defaults set by rust-tools.nvim
					-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
					server = {
						-- on_attach is a callback called when the language server attachs to the buffer
						-- on_attach = on_attach,
						settings = {
							-- to enable rust-analyzer settings visit:
							-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
							['rust-analyzer'] = {
								-- enable clippy on save
								checkOnSave = {
									command = 'clippy',
								},
							},
						},
					},
				},
			}
		end,
	}
end)
