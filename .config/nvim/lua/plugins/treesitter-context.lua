return {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    opts = {
        max_lines = 3,
    },
    keys = {
        {
            "<leader>ut",
            function()
                require("treesitter-context").toggle()
            end,
            desc = "Toggle Treesitter Context",
        },
    },
}
