return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = true,
			integrations = {
				alpha = true,
				barbecue = {
					dim_context = true,
					dim_dirname = true,
					bold_basename = true,
					alt_background = false,
				},
				cmp = true,
				flash = true,
				gitsigns = true,
				illuminate = {
					lsp = true,
					enabled = true,
				},
				indent_blankline = {
					enabled = true,
				},
				lsp_trouble = true,
				mason = true,
				neotest = true,
				noice = true,
				telescope = true,
				treesitter = true,
				which_key = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
