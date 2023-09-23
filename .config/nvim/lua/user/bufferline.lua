-----------------------------------------------
-- barbar.nvim config
-----------------------------------------------

local offsets = {
    {
        filetype = 'NvimTree',
        text = 'File Explorer',
        text_align = 'center',
        highlight = 'BufferLineOffset',
        separator = true,
    },
}

local options = {
    offsets = offsets,
    buffer_close_icon = '',
    close_icon = '',
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
    end,
    color_icons = true,
    separator_style = 'slant',
}

require('bufferline').setup { options = options }
