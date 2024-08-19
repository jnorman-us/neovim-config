return {
    {'folke/tokyonight.nvim'},
    {'nvim-treesitter/nvim-treesitter'},
    {'VonHeikemen/lsp-zero.nvim', branch = "v4.x"},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'nvim-tree/nvim-tree.lua'},
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "rouge8/neotest-rust",
            "nvim-neotest/neotest-go",
        },
    },
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lualine/lualine.nvim'},
}
