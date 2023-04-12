local colorscheme = "gruvbox"
-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {
        NvimTreeNormal = { bg = "#151515" },
        NormalFloat    = { link = 'Normal' },
        FloatBorder    = { bg = 'None' }
    },
    dim_inactive = false,
    transparent_mode = false,
})

-- patch rust treesitter parser to color 'mod' and 'use' as keywords
vim.api.nvim_set_hl(0, "@include.rust", { link = "@keyword" })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("Colorscheme " .. colorscheme .. " not found!")
    return
end
