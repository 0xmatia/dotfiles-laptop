--------------------------------------------------
-- nvim tree config
-------------------------------------------------
-- Nvim-Tree.lua advises to do this at the start.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local renderer = {
    indent_width = 2,
    indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
            corner = '╰'
        }
    },
    icons = {
        git_placement = 'after',
        modified_placement = 'after',
        padding = ' ',
        glyphs = {
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
            }
        }
    }
}

local view = {
    cursorline = false,
    hide_root_folder = false,
    signcolumn = 'no',
    mappings = {
        list = {
            -- Allow moving out of the explorer.
            { key = "<C-i>", action = "toggle_file_info" },
            { key = "<C-k>", action = "" },
            { key = "[", action = "dir_up" },
            { key = "]", action = "cd" },
            { key = "<Tab>", action = "edit" }
        }
    },
    width = {
        max = 40,
        min = 40,
        padding = 1
    },
}

-- Setup.
require 'nvim-tree'.setup {
    hijack_cursor = true,
    sync_root_with_cwd = true,
    view = view,
    git = {
        ignore = false
    },
    renderer = renderer,
    diagnostics = {
        enable = true
    }
}
--[[ local status_ok, nvim_tree = pcall(require, "nvim-tree") ]]
--[[ if not status_ok then ]]
--[[ 	return ]]
--[[ end ]]
--[[]]
--[[ local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config") ]]
--[[ if not config_status_ok then ]]
--[[ 	return ]]
--[[ end ]]
--[[]]
--[[ local tree_cb = nvim_tree_config.nvim_tree_callback ]]
--[[]]
--[[ nvim_tree.setup { ]]
--[[ 	update_cwd = true, ]]
--[[ 	renderer = { ]]
--[[ 		add_trailing = false, ]]
--[[ 		group_empty = false, ]]
--[[ 		highlight_git = false, ]]
--[[ 		highlight_opened_files = "none", ]]
--[[ 		root_folder_modifier = ":t", ]]
--[[ 		indent_markers = { ]]
--[[ 			enable = false, ]]
--[[ 			icons = { ]]
--[[ 				corner = "└ ", ]]
--[[ 				edge = "│ ", ]]
--[[ 				none = "  ", ]]
--[[ 			}, ]]
--[[ 		}, ]]
--[[ 		icons = { ]]
--[[ 			webdev_colors = true, ]]
--[[ 			git_placement = "before", ]]
--[[ 			padding = " ", ]]
--[[ 			symlink_arrow = " ➛ ", ]]
--[[ 			show = { ]]
--[[ 				file = true, ]]
--[[ 				folder = true, ]]
--[[ 				folder_arrow = true, ]]
--[[ 				git = true, ]]
--[[ 			}, ]]
--[[ 			glyphs = { ]]
--[[ 				default = "", ]]
--[[ 				symlink = "", ]]
--[[ 				folder = { ]]
--[[ 					arrow_open = "", ]]
--[[ 					arrow_closed = "", ]]
--[[ 					default = "", ]]
--[[ 					open = "", ]]
--[[ 					empty = "", ]]
--[[ 					empty_open = "", ]]
--[[ 					symlink = "", ]]
--[[ 					symlink_open = "", ]]
--[[ 				}, ]]
--[[ 				git = { ]]
--[[ 					unstaged = "", ]]
--[[ 					staged = "S", ]]
--[[ 					unmerged = "", ]]
--[[ 					renamed = "➜", ]]
--[[ 					untracked = "U", ]]
--[[ 					deleted = "", ]]
--[[ 					ignored = "◌", ]]
--[[ 				}, ]]
--[[ 			}, ]]
--[[ 		}, ]]
--[[]]
--[[ 	}, ]]
--[[ 	view = { ]]
--[[ 		adaptive_size = true, ]]
--[[ 		hide_root_folder = false, ]]
--[[ 		side = "left", ]]
--[[ 		-- auto_resize = true, ]]
--[[ 		mappings = { ]]
--[[ 			custom_only = false, ]]
--[[ 			list = { ]]
--[[ 				{ key = { "l", "<CR>", "o" }, cb = tree_cb "edit" }, ]]
--[[ 				{ key = "h", cb = tree_cb "close_node" }, ]]
--[[ 				{ key = "v", cb = tree_cb "vsplit" }, ]]
--[[ 			}, ]]
--[[ 		}, ]]
--[[ 		number = false, ]]
--[[ 		relativenumber = false, ]]
--[[ 	}, ]]
--[[ 	update_focused_file = { ]]
--[[ 		enable = true, ]]
--[[ 		update_cwd = false, ]]
--[[ 		ignore_list = {}, ]]
--[[ 	}, ]]
--[[ 	ignore_ft_on_setup = { ]]
--[[ 	}, ]]
--[[ 	diagnostics = { ]]
--[[ 		enable = true, ]]
--[[ 		icons = { ]]
--[[ 			hint = "", ]]
--[[ 			info = "", ]]
--[[ 			warning = "", ]]
--[[ 			error = "", ]]
--[[ 		}, ]]
--[[ 	}, ]]
--[[ 	filters = { ]]
--[[ 		dotfiles = false, ]]
--[[ 		custom = { ".git" }, ]]
--[[ 		exclude = { ".gitignore" }, ]]
--[[ 	}, ]]
--[[ 	git = { ]]
--[[ 		enable = true, ]]
--[[ 		ignore = true, ]]
--[[ 		timeout = 400, ]]
--[[ 	}, ]]
--[[ } -- END_DEFAULT_OPTS ]]
--[[]]
