-----------------------------------------------
-- barbar.nvim config
-----------------------------------------------

local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
    return require 'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
    bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
    bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
    bufferline_api.set_offset(0)
end)

-- Setup.
require 'bufferline'.setup {
    animation = true,
    auto_hide = false,
    highlight_inactive_file_icons = true,
    icons = {
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = true, icon = ' ' },
            [vim.diagnostic.severity.WARN] = { enabled = true, icon = ' ' },
            [vim.diagnostic.severity.INFO] = { enabled = false },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        separator = { left = '▎', right = '' },
        pinned = { button = '車' },
    },
    minimum_padding = 1,
    maximum_padding = 5,
    maximum_length = 15,
    exclude_ft = {
        "dap-repl"
    },
}
