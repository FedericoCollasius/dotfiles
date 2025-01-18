return {
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        style = {
          comments = 'none', -- This will disable italics for comments
          strings = 'none', -- This will disable italics for strings
        },
      }
      vim.cmd 'colorscheme vague'
    end,
    priority = 1000,
  },
}
