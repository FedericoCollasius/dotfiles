return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
      -- File explorer toggle
      vim.keymap.set('n', '<C-q>', '<cmd>NvimTreeToggle<CR>', {
          noremap = true,
          silent = true,
          desc = "Toggle NvimTree"
      })
    end
  }
}
