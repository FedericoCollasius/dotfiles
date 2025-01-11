-- Set leader 
vim.g.mapleader = " "

-- Move highlighted blocks up and down while maintaining indentation
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Join lines without moving cursor (maintains cursor position)
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

-- Paste over selection without losing original paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without overwriting register" })

-- Half-page jumping while keeping cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half-page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half-page" })

-- Keep search terms centered when navigating results
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })

-- Tmux integration for project management
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { 
    desc = "Open tmux sessionizer" 
})

-- Quick find and replace for word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { 
    desc = "Find and replace word under cursor" 
})

-- Remove trailing whitespace from the entire file
vim.keymap.set('n', '<leader>w', [[:%s/\s\+$//e<CR>]], { 
    noremap = true, 
    silent = true, 
    desc = "Remove trailing whitespace" 
})
