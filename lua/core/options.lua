local opt = vim.opt -- for conciseness

-- Line numbers (relative)
opt.nu = true
opt.relativenumber = true

-- Tab spaces
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Improved search highlighting
--opt.hlsearch = false
opt.incsearch = true

-- Keep cursor within 8 lines when scrolling
opt.scrolloff = 6