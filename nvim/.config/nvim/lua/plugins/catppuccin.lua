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

			--[[ 			color_overrides = {
				macchiato = {
					rosewater = "#efc9c2",
					flamingo = "#ebb2b2",
					pink = "#f2a7de",
					mauve = "#b889f4",
					red = "#ea7183",
					maroon = "#ea838c",
					peach = "#f39967",
					yellow = "#eaca89",
					green = "#96d382",
					teal = "#78cec1",
					sky = "#91d7e3",
					sapphire = "#68bae0",
					blue = "#739df2",
					lavender = "#a0a8f6",
					text = "#b5c1f1",
					subtext1 = "#a6b0d8",
					subtext0 = "#959ec2",
					overlay2 = "#848cad",
					overlay1 = "#717997",
					overlay0 = "#63677f",
					surface2 = "#505469",
					surface1 = "#3e4255",
					surface0 = "#2c2f40",
					base = "#1a1c2a",
					mantle = "#141620",
					crust = "#0e0f16",
				},
	 		},]]

			highlight_overrides = {
				all = function(C)
					return {
						-- For base configs
						NormalFloat = { fg = C.text, bg = C.mantle },
						FloatBorder = {
							fg = C.mantle,
							bg = C.mantle,
						},
						CursorLineNr = { fg = C.mauve },

						-- For native lsp configs
						DiagnosticVirtualTextError = { bg = C.none },
						DiagnosticVirtualTextWarn = { bg = C.none },
						DiagnosticVirtualTextInfo = { bg = C.none },
						DiagnosticVirtualTextHint = { bg = C.none },
						LspInfoBorder = { link = "FloatBorder" },

						-- For mason.nvim
						MasonNormal = { link = "NormalFloat" },

						-- For indent-blankline
						IblIndent = { fg = C.surface0 },
						IblScope = { fg = C.surface2, style = { "bold" } },

						-- For nvim-notify
						NotifyBackground = { bg = C.base },

						-- For trouble.nvim
						TroubleNormal = { bg = C.base },

						-- For telescope.nvim
						TelescopeMatching = { fg = C.lavender },
						TelescopeResultsDiffAdd = { fg = C.green },
						TelescopeResultsDiffChange = { fg = C.yellow },
						TelescopeResultsDiffDelete = { fg = C.red },

						-- for nvim-cmp
						CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
						CmpItemKindKeyword = { fg = C.base, bg = C.red },
						CmpItemKindText = { fg = C.base, bg = C.teal },
						CmpItemKindMethod = { fg = C.base, bg = C.blue },
						CmpItemKindConstructor = { fg = C.base, bg = C.blue },
						CmpItemKindFunction = { fg = C.base, bg = C.blue },
						CmpItemKindFolder = { fg = C.base, bg = C.blue },
						CmpItemKindModule = { fg = C.base, bg = C.blue },
						CmpItemKindConstant = { fg = C.base, bg = C.peach },
						CmpItemKindField = { fg = C.base, bg = C.green },
						CmpItemKindProperty = { fg = C.base, bg = C.green },
						CmpItemKindEnum = { fg = C.base, bg = C.green },
						CmpItemKindUnit = { fg = C.base, bg = C.green },
						CmpItemKindClass = { fg = C.base, bg = C.yellow },
						CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
						CmpItemKindFile = { fg = C.base, bg = C.blue },
						CmpItemKindInterface = { fg = C.base, bg = C.yellow },
						CmpItemKindColor = { fg = C.base, bg = C.red },
						CmpItemKindReference = { fg = C.base, bg = C.red },
						CmpItemKindEnumMember = { fg = C.base, bg = C.red },
						CmpItemKindStruct = { fg = C.base, bg = C.blue },
						CmpItemKindValue = { fg = C.base, bg = C.peach },
						CmpItemKindEvent = { fg = C.base, bg = C.blue },
						CmpItemKindOperator = { fg = C.base, bg = C.blue },
						CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
						CmpItemKindCopilot = { fg = C.base, bg = C.teal },
						Pmenu = { fg = C.overlay2, bg = transparent_background and C.none or C.base },
						PmenuBorder = { fg = C.surface1, bg = transparent_background and C.none or C.base },
						PmenuSel = { bg = C.green, fg = C.base },
						CmpItemAbbr = { fg = C.overlay2 },
						CmpItemAbbrMatch = { fg = C.blue, style = { "bold" } },
						CmpDoc = { link = "NormalFloat" },
						CmpDocBorder = {
							fg = transparent_background and C.surface1 or C.mantle,
							bg = transparent_background and C.none or C.mantle,
						},
						-- For treesitter
						["@keyword.return"] = { fg = C.pink, style = clear },
						["@error.c"] = { fg = C.none, style = clear },
						["@error.cpp"] = { fg = C.none, style = clear },
					}
				end,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
