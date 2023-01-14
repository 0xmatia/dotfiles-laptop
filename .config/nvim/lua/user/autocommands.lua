-- Remove statusline and tabline when in Alpha
vim.api.nvim_create_autocmd({ "User" }, {
  pattern = { "AlphaReady" },
  callback = function()
    vim.cmd [[
      set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
      set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
    ]]
  end,
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

-- make Float windows background same as Normal background
--[[ local set_hl_for_floating_window = function() ]]
--[[   vim.api.nvim_set_hl(0, 'NormalFloat', { ]]
--[[     link = 'Normal', ]]
--[[   }) ]]
--[[   vim.api.nvim_set_hl(0, 'FloatBorder', { ]]
--[[     bg = 'none', ]]
--[[   }) ]]
--[[ end ]]

--[[ set_hl_for_floating_window() ]]
--[[]]
--[[ vim.api.nvim_create_autocmd('ColorScheme', { ]]
--[[   pattern = '*', ]]
--[[   desc = 'Avoid overwritten by loading color schemes later', ]]
--[[   callback = set_hl_for_floating_window, ]]
--[[ }) ]]

