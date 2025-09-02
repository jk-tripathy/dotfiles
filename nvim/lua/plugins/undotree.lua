local M = {
    "mbbill/undotree",
    keys = {
        {
            mode = "n",
            "U",
            function()
                vim.cmd.UndotreeToggle()
            end,
        },
    },
}

return M
