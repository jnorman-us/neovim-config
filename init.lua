vim.g.mapleader = ","

require("config.lazy")
require("lazy").setup({
    {import = "user.plugins"}
})

vim.opt.termguicolors = true
vim.opt.syntax = "enabled"
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.cmd.colorscheme('tokyonight')

require('telescope').setup{}
require('lualine').setup{}

require('user.lsp')
require('user.cmp')
require('user.tree')
require('user.tests')
require('user.keybinds')

