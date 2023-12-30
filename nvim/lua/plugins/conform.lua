local M = {
    "stevearc/conform.nvim",
    lazy = true,
    event = "BufWritePre",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },

            python = {
                "black",
                "isort",
                "docformatter",
            },

            markdown = { "mdformat" },

            ["*"] = { "codespell" },
        },

        formatters = {
            black = {
                prepend_args = {
                    "--line-length=99",
                },
            },
            isort = {
                prepend_args = {
                    "--profile",
                    "black",
                    "--filter-files",
                },
            },
            mdformat = {
                prepend_args = {
                    "--number",
                },
            },
            codespell = {
                prepend_args = {
                    "--skip=logs/**,data/**,*.ipynb,tests/fixtures/dataset_builders/**",
                    "--ignore-words-list=hist,abstract,arbitrary,ist",
                },
            },
            docformatter = {
                inherit = false,
                command = "docformatter",
                stdin = false,
                args = {
                    "--in-place",
                    "--wrap-summaries=99",
                    "--wrap-descriptions=99",
                    "$FILENAME",
                },
                exit_codes = {
                    3, -- success
                    2, -- interrupted
                    1, -- error
                },
            },
        },

        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}

return M
