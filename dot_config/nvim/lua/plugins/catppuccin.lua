local config = function()
  require('catppuccin').setup({
    flavour = 'frappe',
    term_colors = true,
    integrations = {
      nvimtree = true,
      treesitter = true,
      indent_blankline = {
        enabled = true,
        scope_color = '',
        color_indent_level = false,
      },
      telescope = true,
      illuminate = true,
    },
  })

  vim.cmd.colorscheme 'catppuccin'
  
end

return { 
  "catppuccin/nvim",
  name = "catppuccin", 
  priority = 1000,
  lazy = false,
  config = config
}
