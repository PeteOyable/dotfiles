return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("neoclip").setup({
      on_select = {
        move_to_front = true,
      },
    })
  end,
}
