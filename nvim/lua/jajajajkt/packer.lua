-- This file can be loaded by calling `lua require('plugins')` from your init.vim

--theprimeagen Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- QOL
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-telescope/telescope.nvim")
	use("nvim-treesitter/playground")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("kyazdani42/nvim-web-devicons")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- COLORS
	use({
		"rose-pine/neovim",
		as = "rose-pine",
	})
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- DEBUGGER
	use({
		"mfussenegger/nvim-dap",
	})
	use({
		"rcarriga/nvim-dap-ui",
		requires = {
			{ "mfussenegger/nvim-dap" },
			{ "ChristianChiarulli/neovim-codicons" },
		},
	})
	use({
		"mfussenegger/nvim-dap-python",
		requires = {
			"mfussenegger/nvim-dap",
		},
	})

	-- LSP
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- COPILOT
	use({ "github/copilot.vim" })

	-- FORMATTER
	use("mhartington/formatter.nvim")

	-- GIT
	use({ "tpope/vim-fugitive" })
	use({ "airblade/vim-gitgutter" })

	-- FLUTTER
	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
end)
