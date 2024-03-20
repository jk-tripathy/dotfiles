local M = {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    opts = {
        opleader = { line = "/", block = "b/" },
    },
}

return M
