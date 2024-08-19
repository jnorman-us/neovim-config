require('neotest').setup({
    adapters = {
        require('neotest-rust') {
            args = {
                "--success-output=immediate",
            },
        },
        require('neotest-go'),
    },
})
