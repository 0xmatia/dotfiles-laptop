-- vim.opt.background = "dark";
local colorscheme = "tokyonight"

-- Tokyonight Colorscheme Config
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_colors = {
  border = '#1A1B26';
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Colorscheme " .. colorscheme .. " not found!")
	return
end

-- Floats/Windows
vim.highlight.create('NormalFloat', { guibg = "None", guifg = "None" }, false);
vim.highlight.create('FloatBorder', { guibg = "None" }, false);
vim.highlight.create('WhichKeyFloat', { guibg = "None" }, false);
vim.highlight.create('BufferTabpageFill', { guifg = "None" }, false);
vim.highlight.create('VertSplit', { guibg = "#16161e", guifg = "#16161e" }, false);
vim.highlight.link('BqfPreviewBorder', 'FloatBorder', true)

-- Telescope
vim.highlight.link('TelescopeTitle', 'EcovimSecondary', true);
vim.highlight.create('TelescopeNormal', { guibg = "None", guifg = "None" }, false);
vim.highlight.create('TelescopeBorder', { guibg = "None" }, false);
vim.highlight.link('TelescopeMatching', 'Constant', true);
