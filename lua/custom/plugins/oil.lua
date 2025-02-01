return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set('n', '<space>of', function()
      vim.fn.execute('edit .', 'silent')
    end, { desc = 'Open workspace folder' })
    vim.keymap.set('n', '<space>oo', function()
      local path = vim.fn.expand '%:h'
      vim.fn.execute('edit ' .. path, 'silent')
    end, { desc = 'Open current file folder' })
  end,
}
