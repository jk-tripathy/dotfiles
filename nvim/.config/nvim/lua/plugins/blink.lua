local M = {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
        fuzzy = {
            implementation = "lua"
        },
        keymap = {
            preset = "default",
            ["<C-space>"] = { "show", "fallback" },
            ["<CR>"] = { "select_and_accept", "fallback" },
            ["K"] = { "show_documentation", "fallback" },
        },
        cmdline = {
            enabled = false,
            keymap = {
                preset = "enter",
                ["<CR>"] = { "select_accept_and_enter", "fallback" },
            },
        },
        appearance = {
            nerd_font_variant = "normal",
        },
        completion = {

            menu = {
                border = "single",
                draw = {
                    columns = {
                        { "kind_icon",  gap = 1 },
                        { "label",      gap = 4 },
                        { "kind" },
                        { "source_name" },
                    },
                },
            },
            documentation = {
                window = { border = "single" },
                auto_show = true,
                auto_show_delay_ms = 200,
            },
        },

        signature = { enabled = true, window = { border = "single" } },
    },
}

return M
