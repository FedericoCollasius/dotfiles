return {
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- You can customize the theme here
        style = {
          comments = "none",  -- This will disable italics for comments
          strings = "none",   -- This will disable italics for strings
          -- You can set other style options to "none" to disable italics
        }
      })
      vim.cmd("colorscheme vague")
    end,
    priority = 1000,
  }
}
