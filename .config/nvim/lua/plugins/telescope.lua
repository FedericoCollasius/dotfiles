return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files in Git' })

      vim.keymap.set('n', '<leader>ps', function()
          builtin.grep_string({
              search = vim.fn.input("Grep > ")
          })
      end, { desc = 'Telescope find string in whole project' })
    end
  }
}
