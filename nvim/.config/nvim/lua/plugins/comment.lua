local M = {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    opts = {
        opleader = { line = "<C-c>", block = "<C-C>" },
    },
}

return M
