return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  keys = {
    {
      "<leader>td",
      "<cmd>Trouble diagnostics toggle<CR>",
      desc = "[T]oggle [D]iagnostics"
    },
    {
      "<leader>tD",
      "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
      desc = "[T]oggle [D]agnostics (for current buffer)"
    },
  },
  opts = {
    position = "bottom",
  },
}
