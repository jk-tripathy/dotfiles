require('dapui').setup()
require('dap-python').setup('~/.local/share/nvim/mason/packages/debugpy/venv/bin/python')
require('dap-python').test_runner = 'pytest'

vim.keymap.set('n', '<leader>dt', function() require('dapui').toggle() end)
vim.keymap.set('n', '<leader>dr', function() require('dapui').open({reset=true}) end)

vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<leader>df', function() require('dap-python').test_method() end)


