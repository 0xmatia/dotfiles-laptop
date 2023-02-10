---------------------------------------------------------
-- Plugin Managment
---------------------------------------------------------

require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer can manage itself
	use 'numToStr/Comment.nvim' -- useful for commenting stuff
	use { 'goolord/alpha-nvim', requires = { 'kyazdani42/nvim-web-devicons' } } -- startup screen

	use 'rust-lang/rust.vim' -- rust default settings
	use 'simrat39/rust-tools.nvim' -- rust tools for debugging and stuff
	use 'cespare/vim-toml' -- toml support (?)
	use "Saecki/crates.nvim"

	use 'RRethy/vim-illuminate'
	use 'windwp/nvim-autopairs' -- auto pairs
	use 'ahmedkhalf/project.nvim' -- project managment
	use 'rcarriga/nvim-notify' -- notification library
	use 'karb94/neoscroll.nvim' -- smooth scrolling
	use 'matbme/JABS.nvim' -- buffer switcher
	use "lukas-reineke/indent-blankline.nvim" --indentations
	use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	use 'moll/vim-bbye'
	use 'stevearc/dressing.nvim'

	use {
		"folke/todo-comments.nvim", -- for todo comments
		requires = { "nvim-lua/plenary.nvim" }
	}

	-- File tree --
	use {
		'kyazdani42/nvim-tree.lua', -- file explorer
		requires = {
			'kyazdani42/nvim-web-devicons' -- file icons
		},
	}

	-- impatient (speed up startup times)
	use 'lewis6991/impatient.nvim'

	-- bufferline
	use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }

	-- terminal
	use "akinsho/toggleterm.nvim"

	-- Status Bar --
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- lsp --
	use {
		'neovim/nvim-lspconfig', -- lsp configuration for neovim
		'williamboman/mason.nvim', -- Mason - the lsp installer alternative.
		'williamboman/mason-lspconfig.nvim', -- Mason lsp configurationlsp configuration
		'ray-x/lsp_signature.nvim', -- signature as you type
		'jose-elias-alvarez/null-ls.nvim'
	}

	-- git stuff
	use {
		'lewis6991/gitsigns.nvim',
		'akinsho/git-conflict.nvim',
		'ThePrimeagen/git-worktree.nvim',
		'sindrets/diffview.nvim',
		'kdheepak/lazygit.nvim'
	}


	-- Auto Completion --
	use {
		'hrsh7th/nvim-cmp', -- Autocompletion framework
		'hrsh7th/cmp-nvim-lsp', -- cmp LSP completion
		'hrsh7th/cmp-path', -- cmp Path completion
		'hrsh7th/cmp-buffer', -- cmp buffer completion
		'hrsh7th/cmp-cmdline', -- cmp cmdline auto-completion
		'petertriho/cmp-git', -- for git auto-completion
		'hrsh7th/cmp-nvim-lua', -- for nvim lua auto-completion
		"saadparwaiz1/cmp_luasnip", -- snippet completion
		'rcarriga/cmp-dap',
		'onsails/lspkind-nvim' -- customize popup
	}
	-- snippets --
	use "L3MON4D3/LuaSnip" -- snippet engine
	use "rafamadriz/friendly-snippets" --snippet collection


	-- Telescope
	use {
		'nvim-lua/plenary.nvim',
		'nvim-lua/popup.nvim',
		'nvim-telescope/telescope.nvim'
	}

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use "JoosepAlviste/nvim-ts-context-commentstring"
	use 'nvim-treesitter/nvim-treesitter-context'

	-- Colorschemes --
	use "ellisonleao/gruvbox.nvim"
end)
