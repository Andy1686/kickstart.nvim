return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    animate = {},
    lazygit = {},
    notifier = {},
  },
  keys = {
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>lz',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
  },
}
