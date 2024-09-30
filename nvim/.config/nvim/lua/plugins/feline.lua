return {
	"freddiehaddad/feline.nvim",
	lazy = false,
	config = function()
		require("feline").setup({
			components = require("catppuccin.groups.integrations.feline").get(),
		})
	end,
}
