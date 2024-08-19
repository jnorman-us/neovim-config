local telescope = require('telescope.builtin')

-- picker reference https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
-- vim.keymap.set('n', '<leader>fg', telescope.grep_string, {})

vim.keymap.set('n', '<leader>fr', telescope.lsp_references, {})

local tree = require('nvim-tree.api')
vim.keymap.set('n', '<leader>o', ':NvimTreeToggle<CR>', {noremap = true, silent=true})

local tests = require('neotest')
vim.keymap.set('n', '<leader>tt', tests.run.run, {})
vim.keymap.set('n', '<leader>to', tests.output_panel.toggle, {})
vim.keymap.set('n', '<leader>tc', tests.output_panel.clear, {})
vim.keymap.set('n', '<leader>ts', tests.summary.toggle, {})
vim.keymap.set('n', '<leader>th', tests.run.stop, {})

