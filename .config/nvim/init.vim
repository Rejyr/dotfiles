"
" Plugins
"
lua require('plugins')

" Line Numbers
:set number relativenumber

" 4-wide space tabs
set shiftwidth=4
set softtabstop=0
set tabstop=8
set expandtab
set smarttab

" map leader key to space
let mapleader = ' '

" color setup
let base16colorspace=256
colorscheme kanagawa

"
" LSP/Rust setup
"
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Configure LSP throu
" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" Auto format rust files
" autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
