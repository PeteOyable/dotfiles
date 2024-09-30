return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function()
			local gs = package.loaded.gitsigns
			vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { desc = "Prev Hunk" })
			vim.keymap.set("n", "<leader>gb", gs.toggle_current_line_blame, { desc = "Toggle Current Line Blame" })
		end,
	},
}
