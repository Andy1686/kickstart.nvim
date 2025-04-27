return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = 'Add file' })

    vim.keymap.set('n', '<leader>af', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'List marks' })

    vim.keymap.set('n', '<leader>an', function()
      harpoon:list():next()
    end, { desc = 'Go to next mark' })

    vim.keymap.set('n', '<leader>ap', function()
      harpoon:list():prev()
    end, { desc = 'Go to previous mark' })

    vim.keymap.set('n', '<C-&>', function()
      harpoon:list():select(1)
    end, { desc = 'Go to first mark' })

    vim.keymap.set('n', '<C-é>', function()
      harpoon:list():select(2)
    end, { desc = 'Go to second mark' })

    vim.keymap.set('n', '<C-">', function()
      harpoon:list():select(3)
    end, { desc = 'Go to third mark' })

    vim.keymap.set('n', "<C-'>", function()
      harpoon:list():select(4)
    end, { desc = 'Go to fourth mark' })
  end,
}
