return {
	"tree-sitter/tree-sitter-embedded-template",
	config = function()
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.embedded_template = {
			install_info = {
				url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
				files = { "src/parser.c" },
				requires_generate_from_grammar = false,
			},
		}
		vim.treesitter.language.register("embedded_template", "ejs")

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.ejs",
			command = "set filetype=ejs",
		})
	end,
}
