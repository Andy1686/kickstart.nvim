return {
  'folke/trouble.nvim',
  opts = {},
  cmd = 'Trouble',
  keys = {
    { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics' },
    { '<leader>xX', '<cmd>Trouble diagnostics toggle filter.bug=0<cr>', desc = 'Buffer Diagnostics' },
    { '<leader>xQ', '<cmd>Trouble qflist<cr>', desc = 'Quickfix' },
  },
}
