vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers

-- 4 space indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- no line wrap
vim.opt.wrap = false

-- vim doesnt do backups, 
-- instead undotree plugin will have access to long running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- no highlighting terms when searching, 
-- but allows incremental search (?)
--vim.opt.hlsearch = false
--vim.opt.incsearch = true

-- richer colors when possible
vim.opt.termguicolors = true

-- keeps 8 lines visible above/below cursor when scrolling
vim.opt.scrolloff = 8

-- how long vim waits before triggering certain events.
-- ex: lsp info
vim.opt.updatetime = 50

-- column to delemit the width
-- its like a rule of thumb for not making complex functions
vim.opt.colorcolumn = "80"

-- leader key
vim.g.mapleader = " "






