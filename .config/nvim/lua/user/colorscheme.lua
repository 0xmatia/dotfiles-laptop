
vim.opt.background = "dark";
local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("Colorscheme " .. colorscheme .. " not found!")
	return
end

-- lsp completion popup colors
vim.cmd([[highlight! Normal guibg=NONE]])
vim.cmd([[highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080]])
vim.cmd([[highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6]])
vim.cmd([[highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE]])
vim.cmd([[highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE]])
vim.cmd([[highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE]])
vim.cmd([[highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0]])
vim.cmd([[highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4]])
vim.cmd([[highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4]])
vim.cmd([[highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4]])
