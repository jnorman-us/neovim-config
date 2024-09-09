require('neotest').setup({
    adapters = {
        require('neotest-rust') {
            args = {
                "--success-output=final",
            },
        },
        require('neotest-go'),
    },
})
