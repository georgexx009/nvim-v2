vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

-- main keymaps
keymap.set("n", "<leader>x", ":q<CR>")
keymap.set("i", "jk", "<ESC>:w<CR>")
keymap.set("i", "jj", "()<Left>")
keymap.set("i", "kk", "{}<Left><CR><CR><Up><TAB>")
keymap.set("i", "hh", "<Right>")
keymap.set("n", "<leader>c", "\"+y$")

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equal width
keymap.set("n", "<leader>h", "<C-w>h") -- go to split on the left
keymap.set("n", "<leader>l", "<C-w>l") -- go to split on the right
keymap.set("n", "<leader>j", "<C-w>j") -- go to split down
keymap.set("n", "<leader>k", "<C-w>k") -- go to split up

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Yank to system clipboard keymap
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- Delete and send deletion to void register
keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")
keymap.set("n", "x", "\"_x")
keymap.set("v", "x", "\"_x")

-- highlight
keymap.set("n", "<leader>cs", ":noh<CR>")

-- fold
keymap.set("n", "<leader>zf", "zfa{") -- fold {}
keymap.set("n", "<leader>zt", "za") -- toggle fold
keymap.set("n", "<leader>zca", "zM") -- close all folds
keymap.set("n", "<leader>zoa", "zR") -- open all folds

-- Move highlighted lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move previous and forward places for pointers
keymap.set("n", "<C-m>", "<C-o>") -- Jump to previous in jump list
keymap.set("n", "<C-n>", "<C-i>") -- Jump to next in jump list

-- move to root vars and functions
keymap.set("n", "<leader>rs", "/^<Bslash>(const<Bslash>|let<Bslash>|function<Bslash>|module<Bslash>)<CR>") -- search root

keymap.set("n", "<leader>ge", "iif err != nil {\nreturn err\n}\n")

-- copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_enabled = false
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
keymap.set("i", "<C-n>", "<Plug>(copilot-next)")
keymap.set("i", "<C-p>", "<Plug>(copilot-prev)")
keymap.set("i", "<C-s>", "<Plug>(copilot-suggest)")


-- navigate like a graph
-- keymap.set("n", "<leader>gsr", "O// root<ESC>:w<CR>") -- graph start root
-- keymap.set("n", "<leader>gsb", "<leader>gdO// branch<ESC>:w<CR><leader>cs") -- graph start branch
-- keymap.set("n", "<leader>gxn", "<leader>gf")

-- Mark like xcode
keymap.set("n", "<leader>wm", "O// MARK -<ESC>:w<CR>") -- write Mark
keymap.set("n", "<leader>sm", "/MARK<CR>") -- search Mark

-- code helpers
keymap.set("n", "<leader>as", "$a;<ESC>:w<CR>") -- add semicolon
keymap.set("n", "<leader>sw", "\"+yiw/<C-r>\"<CR>") -- search word
keymap.set("n", "<leader>si", "\"+yiw/import <C-r>\"<CR>w") -- search import
keymap.set("n", "<leader>dd", "iconsole.log('")
