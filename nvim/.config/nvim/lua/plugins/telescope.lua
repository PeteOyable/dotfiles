return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			file_ignore_patterns = { "node_modules", ".git" },
			pickers = {
				oldfiles = {
					only_cwd = true,
				},
				find_files = {
					hidden = true,
					include_gitignore = true,
				},
			},
			defaults = {
				initial_mode = "normal",
				path_display = { "truncate" },
				sorting_strategy = "ascending",
				selection_strategy = "closest",
				set_env = { ["COLORTERM"] = "truecolor" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-d>"] = actions.delete_buffer,
					},
					n = {
						["<C-d>"] = actions.delete_buffer,
					},
				},
				color_devicons = true,
			},
			extensions = {
				file_browser = {
					hidden = true,
					hijack_netrw = true,
					display_stat = {
						mode = false,
						size = false,
						date = true,
					},
					grouped = true,
					prompt_path = true,
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("file_browser")
		telescope.load_extension("ui-select")
		telescope.load_extension("neoclip")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy find recent buffers" })
		keymap.set("n", "<leader>fR", builtin.lsp_references, { desc = "Find references" })
		keymap.set(
			"n",
			"<leader>fe",
			"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
			{ desc = "Open file explorer" }
		)
		keymap.set("n", "<leader>fr", "<cmd>Telescope neoclip<CR>", { desc = "Fuzzy find registers" })
	end,
}
