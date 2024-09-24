local M = {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },

            python = {
                "black",
                "isort",
                "docformatter",
            },
            dart = { "dart_format" },
            markdown = { "mdformat" },
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
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 5000,
            lsp_fallback = true,
        },
    },
}

return M
