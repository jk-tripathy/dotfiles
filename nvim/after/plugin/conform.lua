require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },

		python = {
			"black",
			"isort",
		},

		markdown = { "mdformat" },

		["*"] = { "codespell" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
