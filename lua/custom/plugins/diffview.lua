return {
  'sindrets/diffview.nvim',
  opts = {},
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>do', '<cmd>DiffviewOpen<cr>', desc = 'Open diffview' },
    { '<leader>dc', '<cmd>DiffviewClose<cr>', desc = 'Close diffview' },
    { '<leader>dh', '<cmd>DiffviewFileHistory<cr>', desc = 'File history' },
    { '<leader>dr', '<cmd>DiffviewRefresh<cr>', desc = 'Refresh' },
    { '<leader>dmo', '<cmd>DiffviewOpen origin/main...HEAD<cr>', desc = 'Open diffview with origin/main' },
    { '<leader>dlh', "<cmd>'<,'>DiffviewFileHistory<cr>", desc = 'Select lines history' },
  },
}
