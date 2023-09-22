require('lualine').setup({
    options = {
        icons_enabled = 'false',
    },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            {
                'diagnostics',
                symbols = {error = 'E:', warn = 'W:', info = 'I:', hint = 'H:'},
            }
        },
        lualine_c = {
            {
                'filename',
                path=1
            }
        },
        lualine_x = {'encoding', 'filetype'},
    },
})


