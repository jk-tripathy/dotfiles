local plugins = {
	-- QOL
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-telescope/telescope.nvim",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
	},

	-- COLORS
	{ "rose-pine/neovim", name = "rose-pine" },
	-- { "catppuccin/nvim", name = "catppuccin" },

	-- DEBUGGER
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-dap",
			"ChristianChiarulli/neovim-codicons",
			lazy = true,
		},
	},

	-- PYTHON DAP
	{ "mfussenegger/nvim-dap-python", lazy = true },

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
		},
	},

	-- COPILOT
	"github/copilot.vim",

	-- FORMATTER
	"stevearc/conform.nvim",

	-- GIT
	"tpope/vim-fugitive",
	"airblade/vim-gitgutter",

	-- FLUTTER
	{
		"akinsho/flutter-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		lazy = "VeryLazy",
	},
}

local opt = {}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, opts)
