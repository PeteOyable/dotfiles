return {
  'MagicDuck/grug-far.nvim',
  keys = {
    {
      '<leader>ts',
      function()
        require('grug-far').open()
      end,
      mode = '',
      desc = '[T]oggle [S]earch'
    },
    {
      '<leader>tS',
      function()
        require('grug-far').open({ prefills = { paths = vim.fn.expand('%') } })
      end,
      mode = '',
      desc = '[T]oggle [S]earch (for current buffer)'
    },
    {
      '<leader>tw',
      function()
        require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>') } })
      end,
      mode = '',
      desc = '[T]oggle Search for [W]ord'
    }
  },
  config = function()
    require('grug-far').setup({
      -- options, see Configuration section below
      -- there are no required options atm
      -- engine = 'ripgrep' is default, but 'astgrep' can be specified
    });
  end
}
