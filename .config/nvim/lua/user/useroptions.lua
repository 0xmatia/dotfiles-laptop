-------------------------------------------------------------------
-- General vim options 
-------------------------------------------------------------------

vim.opt.number = true															-- Row numbers
vim.opt.relativenumber = true
vim.opt.colorcolumn = '100'														-- right-side column
vim.opt.signcolumn = 'yes'														-- sign column
vim.opt.updatetime = 300														-- timeout before writting to swap file
vim.opt.showmatch = true														-- match brackets
vim.opt.ignorecase = true														-- case insensetive pattern searches
vim.opt.hlsearch = true															-- highlight search matches
vim.opt.tabstop = 4																-- tab size
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true														-- autoindent
--  vim.opt.wildmode  = { 'longest', 'list' }										-- wildmenu options
vim.opt.completeopt = { 'menuone', 'noselect' }									-- autocomplete options
vim.opt.syntax = 'true'															-- syntax
vim.opt.mouse = 'a'																-- enable mouse support
vim.opt.clipboard = 'unnamedplus'												-- use system clipboard
vim.opt.cmdheight = 2															-- more space in the neovim command line for displaying messages
vim.opt.fileencoding = 'utf-8'													-- file encoding
vim.opt.pumheight = 10															-- popup menu hight
vim.opt.smartcase = true														-- smart case
vim.opt.smartindent = true														-- smart indentation
vim.opt.splitbelow = true														-- always split below
vim.opt.splitright = true														-- always split to the right
vim.opt.undofile = true															-- persistent undo
vim.opt.scrolloff = 8															-- location of cursor in files
vim.opt.sidescrolloff = 8
vim.opt.termguicolors = true													-- rich colors
vim.cmd('filetype plugin indent on')											-- plugin indent on
