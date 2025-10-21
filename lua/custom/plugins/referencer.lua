return {
  'romus204/referencer.nvim',
  config = function()
    require('referencer').setup {
      enable = true,
      format = '  %d',
      kinds = { 5, 7, 8, 9, 10, 11, 23, 26 },
      pattern = { '*.ts', '*.js', '*.css', '*.scss' },
    }
  end,
}
