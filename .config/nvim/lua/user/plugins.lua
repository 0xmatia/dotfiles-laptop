---------------------------------------------------------
-- Plugin Managment
---------------------------------------------------------

require('packer').startup(function()
	use 'wbthomason/packer.nvim'	-- Packer can manage itself
	use 'preservim/nerdcommenter'	-- usefull for commenting stuff
	use 'mhinz/vim-startify'	-- startup screen

	use 'rust-lang/rust.vim'	-- rust default settings
	use 'simrat39/rust-tools.nvim'	-- rust tools for debugging and stuff
	use 'cespare/vim-toml'	-- toml support (?)

	use 'preservim/tagbar'	-- tagbar (functions, structs and stuff)
	use 'windwp/nvim-autopairs'		-- auto pairs

	-- File tree --
	use {
		'kyazdani42/nvim-tree.lua',	-- file explorer
		requires = {
			'kyazdani42/nvim-web-devicons' -- file icons
		},
	}

	-- impatient (speed up startup times)
	use 'lewis6991/impatient.nvim'

	-- bufferline
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

	-- terminal
	use "akinsho/toggleterm.nvim"

	-- Status Bar --
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- lsp --
	use {
		'neovim/nvim-lspconfig',		-- lsp configuration for neovim
		'williamboman/nvim-lsp-installer' -- lsp installer
	}

	-- git stuff
	use 'lewis6991/gitsigns.nvim'

	-- Auto Completion --
	use {
		'hrsh7th/nvim-cmp',	-- Autocompletion framework
		'hrsh7th/cmp-nvim-lsp',	-- cmp LSP completion
		'hrsh7th/cmp-path',	-- cmp Path completion
		'hrsh7th/cmp-buffer',	-- cmp buffer completion
		'hrsh7th/cmp-cmdline',	-- cmp cmdline auto-completion
		'petertriho/cmp-git',   -- for git auto-completion
		'hrsh7th/cmp-nvim-lua',	-- for nvim lua auto-completion
		"saadparwaiz1/cmp_luasnip",	-- snippet completion
		'onsails/lspkind-nvim'	-- customize popup
	}
	-- crate.io cmp completion
	use {
		'saecki/crates.nvim',
		tag = 'v0.1.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
	-- snippets --
	use "L3MON4D3/LuaSnip"	-- snippet engine
	use "rafamadriz/friendly-snippets" --snippet collection


	-- Telescope
	use {
		'nvim-lua/plenary.nvim',
		'nvim-lua/popup.nvim',
		'nvim-telescope/telescope.nvim'
	}

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Colorschemes --
	use "yong1le/darkplus.nvim"		-- darkplus colorscheme
	use "ellisonleao/gruvbox.nvim"			-- gruvbox colorscheme
end)
