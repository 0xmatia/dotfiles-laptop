require("tokyonight").setup({ style = "night",
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  sidebars = { "qf", "help", "packer", "terminal" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors 'ColorScheme'
  on_colors = function(colors)
	colors.bg = '#252525';
	colors.bg_float = '#252525';
  end,

  on_highlights = function(hl, c)
	hl.LineNr = { bg = '#1f1e1e', fg = c.fg }
  end,
});
local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Colorscheme " .. colorscheme .. " not found!")
	return
end
