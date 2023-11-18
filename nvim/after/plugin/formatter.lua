require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			function()
				local fileName = vim.api.nvim_buf_get_name(0)
				return {
					exe = "~/.local/share/nvim/mason/packages/stylua/stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						fileName,
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
		python = {
			function()
				return {
					exe = "~/.local/share/nvim/mason/packages/black/venv/bin/black",
					args = { "-l 99", "-" },
					stdin = true,
				}
			end,
			function()
				local fileName = vim.api.nvim_buf_get_name(0)
				return {
					exe = "~/.local/share/nvim/mason/packages/docformatter/venv/bin/docformatter",
					args = {
						"--in-place",
						"--wrap-summaries=99",
						"--wrap-descriptions=99",
						fileName,
					},
					stdin = true,
				}
			end,
			function()
				local fileName = vim.api.nvim_buf_get_name(0)
				return {
					exe = "~/.local/share/nvim/mason/packages/isort/venv/bin/isort",
					args = { "--profile black", "--filter-files", fileName },
				}
			end,
		},
		markdown = {
			function()
				local fileName = vim.api.nvim_buf_get_name(0)
				return {
					exe = "~/.local/share/nvim/mason/packages/mdformat/venv/bin/mdformat",
					args = {
						"--number",
						fileName,
					},
					stdin = true,
				}
			end,
		},
	},
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		vim.cmd(":FormatWrite")
	end,
	group = autocmd_group,
})
