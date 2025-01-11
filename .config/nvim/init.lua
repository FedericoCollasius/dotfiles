require("config")
vim.cmd[[colorscheme vague]]
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- Set contrasting colors for float windows
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0f0f0f" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#0f0f0f", fg = "#a0a0a0" })

