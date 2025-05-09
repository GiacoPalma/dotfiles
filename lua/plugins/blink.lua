return {
    'saghen/blink.cmp',
    dependencies = { 
        'rafamadriz/friendly-snippets',
        'giuxtaposition/blink-cmp-copilot',
    },
    version = '1.*',
    opts = {
        keymap = { preset = 'default' },
        completion = {
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 250,
                treesitter_highlighting = true,
            },
            list = {
                selection = { preselect = false, auto_insert = true},
            },
        },
        sources = {
            default =  {"lsp", "path", "snippets", "buffer", "copilot" },
            providers = {
                copilot = {
                    name = "copilot",
                    module = "blink-cmp-copilot",
                    score_offset = 100,
                    async = true,
                },
            },
        },
        signature = { enabled = true }
    },
    opts_extend={"sources.default"}
}
