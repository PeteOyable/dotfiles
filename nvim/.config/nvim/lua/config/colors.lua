local colors = require("catppuccin.palettes").get_palette("macchiato")
local TelescopeColor = {
	TelescopeMatching = { fg = colors.flamingo },
	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

	TelescopePromptPrefix = { bg = colors.surface0 },
	TelescopePromptNormal = { bg = colors.surface0 },
	TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
	TelescopePromptTitle = { bg = colors.lavender, fg = colors.mantle },

	TelescopeResultsNormal = { bg = colors.base },
	TelescopeResultsBorder = { bg = colors.base, fg = colors.base },
	TelescopeResultsTitle = { fg = colors.base },

	TelescopePreviewNormal = { bg = colors.mantle },
	TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
	TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
}

for hl, col in pairs(TelescopeColor) do
	vim.api.nvim_set_hl(0, hl, col)
end
