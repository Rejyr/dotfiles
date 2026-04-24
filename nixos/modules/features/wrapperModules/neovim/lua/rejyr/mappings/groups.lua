local groups = {
  {
    keys = '',
    desc = '',
    mappings = {
      { 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = 'Lsp Hover' } },
      { '<leader>,', '<cmd>Pick buffers<cr>', { desc = 'Switch Buffer' } },
      { '<leader>.', '<cmd>lua require("mini.files").open()<cr>', { desc = 'Browse Files' } },
      { '<leader>/', '<cmd>Pick grep_live<cr>', { desc = 'Search' } },
      { '<leader>:', '<cmd>Pick history<cr>', { desc = 'Commands' } },
      { '<leader>`', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
      { '<leader>u', '<cmd>Undotree<cr>', { desc = 'Undo Tree' } },
      { '<leader>y', '<cmd>YankyRingHistory<cr>', { desc = 'Open Yank History' } },
      { '<leader>Q', ':q<cr>', { desc = ':q' } },
      { '<leader>W', ':wq<cr>', { desc = ':wq' } },
    },
  },
  {
    keys = 'g',
    desc = '+lsp',
    mappings = {
      { 'gD', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = 'Type Definition' } },
      { 'gp', '<cmd>lua vim.diagnostic.jump({count=-1})<cr>', { desc = 'Goto Previous Diagnostic' } },
      { 'gn', '<cmd>lua vim.diagnostic.jump({count=1})<cr>', { desc = 'Goto Next Diagnostic' } },
      { 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = 'Code Action' } },
      { 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = 'Definition' } },
      { 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = 'Implementation' } },
      { 'grr', '<cmd>lua vim.lsp.buf.references()<cr>', { desc = 'References' } },
      { 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'Rename' } },
    },
  },
  {
    keys = '<leader>b',
    desc = '+buffer',
    mappings = {
      { '<leader>bD', '<cmd>:bd<cr>', { desc = 'Delete Buffer & Window' } },
      { '<leader>bb', '<cmd>Pick buffers<cr>', { desc = 'Select Buffer' } },
      { '<leader>bs', '<cmd>:e #<cr>', { desc = 'Switch to Other Buffer' } },
    },
  },
  {
    keys = '<leader>f',
    desc = '+file/format',
    mappings = {
      { '<leader>ff', '<cmd>Pick files<cr>', { desc = 'Find File' } },
      { '<leader>fn', '<cmd>enew<cr>', { desc = 'New File' } },
    },
  },
  {
    keys = '<leader>fm',
    desc = '+format',
    mappings = {
      { '<leader>fmt', '<cmd>lua require("conform").format()<cr>', { desc = 'Format' } },
      { '<leader>fml', '<cmd>lua vim.lsp.buf.format()<cr>', { desc = 'Format with LSP' } },
    },
  },
  {
    keys = '<leader>g',
    desc = '+git',
    mappings = {
      { '<leader>gb', '<cmd>Pick git_branches<cr>', { desc = 'branches' } },
      { '<leader>gc', '<cmd>Pick git_commits<cr>', { desc = 'log' } },
      { '<leader>gg', '<cmd>Git<cr>', { desc = 'Fugitive' } },
      { '<leader>gp', '<cmd>Git push<cr>', { desc = 'Fugitive Git Push' } },
    },
  },
  {
    keys = '<leader>h',
    desc = '+help',
    mappings = {
      { '<leader>hc', '<cmd>Pick commands<cr>', { desc = 'Commands' } },
      { '<leader>hh', '<cmd>Pick help<cr>', { desc = 'Help Pages' } },
      { '<leader>hk', '<cmd>Pick keymaps<cr>', { desc = 'Key Maps' } },
      { '<leader>hm', '<cmd>Pick manpages<cr>', { desc = 'Man Pages' } },
      { '<leader>hs', '<cmd>Pick hipattters<cr>', { desc = 'Search Highlight Groups' } },
    },
  },
  {
    keys = '<leader>q',
    desc = '+quit/session',
    mappings = {
      { '<leader>q!', '<cmd>:qa!<cr>', { desc = ':qa!' } },
      { '<leader>qq', '<cmd>qa<cr>', { desc = ':qa' } },
      { '<leader>qs', '<cmd>wqa<cr>', { desc = ':wqa' } },
    },
  },
  {
    keys = '<leader>s',
    desc = '+search',
    mappings = {
      { '<leader>sg', '<cmd>Pick grep_live<cr>', { desc = 'Grep' } },
      { '<leader>sh', '<cmd>Pick history<cr>', { desc = 'Command History' } },
      { '<leader>sm', '<cmd>Pick marks<cr>', { desc = 'Jump to Mark' } },
      { '<leader>sw', '<cmd>Pick diagnostic<cr>', { desc = 'Diagnostics' } },
    },
  },
  {
    keys = '<leader>w',
    desc = '+windows',
    mappings = {
      { '<leader>w-', '<C-W>s', { desc = 'split-window-below' } },
      { '<leader>w2', '<C-W>v', { desc = 'layout-double-columns' } },
      { '<leader>w=', '<C-W>=', { desc = 'balance-window' } },
      { '<leader>wH', '<C-W>5<', { desc = 'expand-window-left' } },
      { '<leader>wJ', ':resize +5', { desc = 'expand-window-below' } },
      { '<leader>wK', ':resize -5', { desc = 'expand-window-up' } },
      { '<leader>wL', '<C-W>5>', { desc = 'expand-window-right' } },
      { '<leader>wd', '<C-W>c', { desc = 'delete-window' } },
      { '<leader>wh', '<C-W>h', { desc = 'window-left' } },
      { '<leader>wj', '<C-W>j', { desc = 'window-below' } },
      { '<leader>wk', '<C-W>k', { desc = 'window-up' } },
      { '<leader>wl', '<C-W>l', { desc = 'window-right' } },
      { '<leader>ws', '<C-W>s', { desc = 'split-window-below' } },
      { '<leader>wv', '<C-W>v', { desc = 'split-window-right' } },
      { '<leader>ww', '<C-W>p', { desc = 'other-window' } },
      { '<leader>w|', '<C-W>v', { desc = 'split-window-right' } },
    },
  },
}

return groups
