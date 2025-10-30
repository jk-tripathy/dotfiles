local M = {
    "mfussenegger/nvim-dap-python",
    dependencies = {
        "mfussenegger/nvim-dap",
        "ChristianChiarulli/neovim-codicons",
        "nvim-neotest/nvim-nio",
    },
    keys = {
        {
            mode = "n",
            "<leader>df",
            function()
                require("dap-python").test_method()
            end,
        },
    },
    config = function()
        require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
        require("dap-python").test_runner = "pytest"
    end,
}

return {}
