return {
	"nvim-pack/nvim-spectre",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local spectre = require("spectre")

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>S", function()
			spectre.toggle()
		end, { desc = "Toggle Spectre search" })

		keymap.set("n", "<leader>sw", function()
			spectre.open_visual({ select_word = true })()
		end, { desc = "Search current word" })

		keymap.set("n", "<leader>sf", function()
			spectre.open_file_search()
		end, { desc = "Search in current file" })

		spectre.setup()
	end,
}
