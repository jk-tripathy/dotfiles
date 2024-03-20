local M = {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "ChristianChiarulli/neovim-codicons",
    },
    keys = {
        {
            mode = "n",
            "<leader>dt",
            function()
                require("dapui").toggle()
            end,
        },
        {
            mode = "n",
            "<leader>dr",
            function()
                require("dapui").open({ reset = true })
            end,
        },
        {
            mode = "n",
            "<leader>dc",
            function()
                require("dap").continue()
            end,
        },
        {
            mode = "n",
            "<leader>di",
            function()
                require("dap").step_into()
            end,
        },
        {
            mode = "n",
            "<leader>do",
            function()
                require("dap").step_over()
            end,
        },
        {
            mode = "n",
            "<leader>b",
            function()
                require("dap").toggle_breakpoint()
            end,
        },
    },
    config = function()
        require("dapui").setup()
    end,
}

return M
