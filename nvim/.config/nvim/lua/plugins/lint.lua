local M = {
    "mfussenegger/nvim-lint",
    event = "BufReadPost",
    config = function()
        local lint = require("lint")
        lint.linters_by_filetype = {
            java = {'checkstyle'}
        }
    end,
}

return M
