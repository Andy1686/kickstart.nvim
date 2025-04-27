return {
  'tris203/precognition.nvim',
  opts = {
    showBlankVirtLine = false,
  },
  keys = {
    {
      '<leader>p',
      function()
        require('precognition').toggle()
      end,
      desc = 'Precognition',
    },
  },
}
