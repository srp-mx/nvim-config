-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent
vim.opt.smartindent = true

-- Wrap
vim.opt.wrap = false

-- Auxiliary files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Nice colors
vim.opt.termguicolors = true

-- Some space
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Bar on the right
vim.opt.colorcolumn = "80,120"

-- Fast scroll
vim.opt.ttyfast = true

-- Cursor line
vim.opt.cursorline = true

-- Enable mouse
vim.opt.mouse = "a"

