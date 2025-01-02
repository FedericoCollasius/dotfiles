vim.g.mapleader = " "

-- back to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moves highlighted blocks
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- for cursor to not move while:
-- taking line below and appending it to current line with a space 
vim.keymap.set("n", "J", "mzJ`z")
--half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- searching for terms
vim.keymap.set("n", "n", "nzzzv")

-- paste copied text over highlighted block multiple times without losing the
-- original one
vim.keymap.set("x", "<leader>p", "\"_dP")

-- switch between projects using tmux 
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quick find and replace over word you did the command
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- remove trailing whitespace
vim.keymap.set('n', '<leader>w', [[:%s/\s\+$//e<CR>]], { noremap = true, silent = true })
