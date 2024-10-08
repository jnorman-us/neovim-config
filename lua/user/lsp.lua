local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
    local opts = {buffer = bufnr}
    
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, 'gf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = lsp_capabilities
})


require('lspconfig').gopls.setup{capabilities = lsp_capabilities}
require('lspconfig').rust_analyzer.setup{
    capabilities = lsp_capabilities,
    checkOnSave = {
        command = 'clippy',
    },
    assist = {
        importMergeBehavior = 'last',
        importPrefix = 'by_self',
    },
    cargo = {
        allFeatures = true,
    },
    procMacro = {
        enable = true,
    },
}

require('nvim-treesitter.configs').setup{
    ensure_installed = { "go", "lua", "yaml", "helm", "rust" },
    highlight = {
        enable = true,
    },
}
