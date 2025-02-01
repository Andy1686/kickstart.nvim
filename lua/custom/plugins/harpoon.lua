return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('harpoon').setup {}

    vim.keymap.set('n', '<leader>aa', function()
      require('harpoon.mark').add_file()
    end, { desc = 'Add file' })
    vim.keymap.set('n', '<leader>af', function()
      require('harpoon.ui').toggle_quick_menu()
    end, { desc = 'List marks' })
    vim.keymap.set('n', '<leader>ad', function()
      require('harpoon.mark').rm_file()
    end, { desc = 'Remove mark' })
    vim.keymap.set('n', '<leader>aD', function()
      require('harpoon.mark').clear_all()
    end, { desc = 'Remove all marks' })
    vim.keymap.set('n', '<leader>an', function()
      require('harpoon.ui').nav_next()
    end, { desc = 'Go to next mark' })
    vim.keymap.set('n', '<leader>ap', function()
      require('harpoon.ui').nav_prev()
    end, { desc = 'Go to previous mark' })
  end,
}
