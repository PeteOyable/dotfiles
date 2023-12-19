local config = function()
	require("lualine").setup({
		options = {
			theme = 'catppuccin',
			globalstatus = true,
      component_separators = " ",
      section_separators = { left = "", right = "" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
  enabled = false,
}
