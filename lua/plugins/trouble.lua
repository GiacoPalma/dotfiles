return  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)"
        },
        {
            "<leader>tf",
            "<cmd>Trouble diagnostics toggle focus=false filter.buf=0<cr>",
            desc = "Diagnostics (Trouble) current buffer stay in current window"
        },
        {
            "[d",
            "<cmd>Trouble diagnostics next<cr>",
            desc = "Diagnostics next"
        },
        {
            "]d",
            "<cmd>Trouble diagnostics previous<cr>",
            desc = "Diagnostics previous"
        },
        {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)"
        }
    }
}
