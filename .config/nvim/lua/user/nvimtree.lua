-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local icons = {
    git_placement = 'after',
    modified_placement = 'after',
    padding = ' ',
    glyphs = {
        default = '󰈔',
        folder = {
            arrow_closed = '',
            arrow_open = '',
            default = ' ',
            open = ' ',
            empty = ' ',
            empty_open = ' ',
            symlink = '󰉒 ',
            symlink_open = '󰉒 ',
        },
        git = {
            deleted = '',
            unstaged = '',
            untracked = '',
            staged = '',
            unmerged = '',
        },
    },
}
local function root_label(path)
    path = path:gsub(os.getenv("HOME"), ' ') .. '/'
    local path_len = path:len()
    local win_nr = require('nvim-tree.view').get_winnr()
    local win_width = vim.fn.winwidth(win_nr)
    if path_len > (win_width - 2) then
        local max_str = path:sub(path_len - win_width + 5)
        local pos = max_str:find '/'
        if pos then
            return '󰉒 ' .. max_str:sub(pos)
        else
            return '󰉒 ' .. max_str
        end
    end
    return path
end

local renderer = {
    root_folder_label = root_label,
    indent_width = 2,
    indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = { corner = '╰' },
    },
    icons = icons,
}

local view = {
    cursorline = false,
    hide_root_folder = false,
    signcolumn = 'no',
    mappings = {
        list = {
            -- Allow moving out of the explorer.
            { key = 'i',     action = 'toggle_file_info' },
            { key = '<C-k>', action = '' },
            { key = '[',     action = 'dir_up' },
            { key = ']',     action = 'cd' },
            { key = '<Tab>', action = 'edit' },
            { key = 'o',     action = 'system_open' },
        },
    },
    width = { max = 41, min = 40, padding = 1 },
}

local function on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end


    -- Default mappings. Feel free to modify or remove as you wish.
    --
    -- BEGIN_DEFAULT_ON_ATTACH
    vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node, opts('CD'))
    vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer, opts('Open: In Place'))
    vim.keymap.set('n', '<C-k>', api.node.show_info_popup, opts('Info'))
    vim.keymap.set('n', '<C-r>', api.fs.rename_sub, opts('Rename: Omit Filename'))
    vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
    vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
    vim.keymap.set('n', '<C-x>', api.node.open.horizontal, opts('Open: Horizontal Split'))
    vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
    vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
    vim.keymap.set('n', '>', api.node.navigate.sibling.next, opts('Next Sibling'))
    vim.keymap.set('n', '<', api.node.navigate.sibling.prev, opts('Previous Sibling'))
    vim.keymap.set('n', '.', api.node.run.cmd, opts('Run Command'))
    vim.keymap.set('n', '-', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
    vim.keymap.set('n', 'bd', api.marks.bulk.delete, opts('Delete Bookmarked'))
    vim.keymap.set('n', 'bmv', api.marks.bulk.move, opts('Move Bookmarked'))
    vim.keymap.set('n', 'B', api.tree.toggle_no_buffer_filter, opts('Toggle No Buffer'))
    vim.keymap.set('n', 'c', api.fs.copy.node, opts('Copy'))
    vim.keymap.set('n', 'C', api.tree.toggle_git_clean_filter, opts('Toggle Git Clean'))
    vim.keymap.set('n', '[c', api.node.navigate.git.prev, opts('Prev Git'))
    vim.keymap.set('n', ']c', api.node.navigate.git.next, opts('Next Git'))
    vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
    vim.keymap.set('n', 'D', api.fs.trash, opts('Trash'))
    vim.keymap.set('n', 'E', api.tree.expand_all, opts('Expand All'))
    vim.keymap.set('n', 'e', api.fs.rename_basename, opts('Rename: Basename'))
    vim.keymap.set('n', ']e', api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
    vim.keymap.set('n', '[e', api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
    vim.keymap.set('n', 'F', api.live_filter.clear, opts('Clean Filter'))
    vim.keymap.set('n', 'f', api.live_filter.start, opts('Filter'))
    vim.keymap.set('n', 'g?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', 'gy', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
    vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
    vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Git Ignore'))
    vim.keymap.set('n', 'J', api.node.navigate.sibling.last, opts('Last Sibling'))
    vim.keymap.set('n', 'K', api.node.navigate.sibling.first, opts('First Sibling'))
    vim.keymap.set('n', 'm', api.marks.toggle, opts('Toggle Bookmark'))
    vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', 'O', api.node.open.no_window_picker, opts('Open: No Window Picker'))
    vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
    vim.keymap.set('n', 'P', api.node.navigate.parent, opts('Parent Directory'))
    vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
    vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
    vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
    vim.keymap.set('n', 's', api.node.run.system, opts('Run System'))
    vim.keymap.set('n', 'S', api.tree.search_node, opts('Search'))
    vim.keymap.set('n', 'U', api.tree.toggle_custom_filter, opts('Toggle Hidden'))
    vim.keymap.set('n', 'W', api.tree.collapse_all, opts('Collapse'))
    vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
    vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
    vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
    vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
    -- END_DEFAULT_ON_ATTACH


    -- Mappings removed via:
    --   remove_keymaps
    --   OR
    --   view.mappings.list..action = ""
    --
    -- The dummy set before del is done for safety, in case a default mapping does not exist.
    --
    -- You might tidy things by removing these along with their default mapping.
    vim.keymap.set('n', '<C-k>', '', { buffer = bufnr })
    vim.keymap.del('n', '<C-k>', { buffer = bufnr })


    -- Mappings migrated from view.mappings.list
    --
    -- you will need to insert "your code goes here" for any mappings with a custom action_cb
    vim.keymap.set('n', 'i', api.node.show_info_popup, opts('info'))
    vim.keymap.set('n', '[', api.tree.change_root_to_parent, opts('up'))
    vim.keymap.set('n', ']', api.tree.change_root_to_node, opts('cd'))
    vim.keymap.set('n', '<tab>', api.node.open.edit, opts('open'))
    vim.keymap.set('n', 'o', api.node.run.system, opts('run system'))
end

-- empty setup using defaults
require("nvim-tree").setup {
    on_attach = on_attach,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    view = view,
    renderer = renderer,
    git = { ignore = false },
    diagnostics = { enable = true },
}
-- Set window local options.
local api = require 'nvim-tree.api'
local Event = api.events.Event
api.events.subscribe(Event.TreeOpen, function(_)
    vim.cmd [[setlocal statuscolumn=\ ]]
    vim.cmd [[setlocal cursorlineopt=number]]
    vim.cmd('setlocal fillchars+=vert:' .. '▏')
    vim.cmd('setlocal fillchars+=vertright:' .. '▏')
end)

-- When neovim opens.
local function open_nvim_tree(data)
    vim.cmd.cd(data.file:match '(.+)/[^/]*$')
    local directory = vim.fn.isdirectory(data.file) == 1
    if not directory then return end
    require('nvim-tree.api').tree.open()
end
vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
