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
        -- format_on_save = {
        --     timeout_ms = 5000,
        --     lsp_fallback = true,
        -- },
        format_on_save =  function()
            local format = require("conform").format

            local ignore_filetypes = { "lua" }
            if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
                -- format({ lsp_fallback = true, timeout_ms = 500 })
                return
            end

            local hunks = require("gitsigns").get_hunks()
            if hunks == nil then
              return
            end

            local function format_range()
              if next(hunks) == nil then
                vim.notify("done formatting git hunks", "info", { title = "formatting" })
                return
              end
              local hunk = nil
              while next(hunks) ~= nil and (hunk == nil or hunk.type == "delete") do
                hunk = table.remove(hunks)
              end

              if hunk ~= nil and hunk.type ~= "delete" then
                local start = hunk.added.start
                local last = start + hunk.added.count
                -- nvim_buf_get_lines uses zero-based indexing -> subtract from last
                local last_hunk_line = vim.api.nvim_buf_get_lines(0, last - 2, last - 1, true)[1]
                local range = { start = { start, 0 }, ["end"] = { last - 1, last_hunk_line:len() } }
                format({ range = range, async = true, lsp_fallback = true }, function()
                  vim.defer_fn(function()
                    format_range()
                  end, 1)
                end)
              end
            end

            format_range()
        end
    },
}

return M
