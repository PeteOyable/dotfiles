return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					layout = {
						position = "right",
					},
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
				},
			})
		end,
	},
}
