local M = {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "ChristianChiarulli/neovim-codicons",
    },
    lazy = true,
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
            "<F5>",
            function()
                require("dap").continue()
            end,
        },
        {
            mode = "n",
            "<F10>",
            function()
                require("dap").step_into()
            end,
        },
        {
            mode = "n",
            "<F11>",
            function()
                require("dap").step_over()
            end,
        },
        {
            mode = "n",
            "<F12>",
            function()
                require("dap").step_out()
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
