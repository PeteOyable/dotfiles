return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        -- Exclude grug-far file types from copilot
        filetypes = {
          ["grug-far"] = false,
          ["grug-far-history"] = false,
          ["grug-far-help"] = false,
        },
        panel = {
          enabled = true,
          layout = {
            position = "right",
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {

            accept = "<S-TAB>",
          },
        },
      })
    end,
  },
}
