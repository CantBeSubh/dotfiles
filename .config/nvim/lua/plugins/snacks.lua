return {
    "folke/snacks.nvim",
    opts = {
        picker = {
            sources = {
                explorer = {
                    auto_close = true,          -- Auto-close the explorer when a file is selected
                    layout = {
                        { preview = true },     -- The preview window
                        layout = {
                            box = "horizontal", -- Arrange elements horizontally
                            width = 0.8,
                            height = 0.8,
                            { win = "preview", border = "rounded", width = 0.7, title = "{preview}" }, -- Preview on the left
                            {
                                box = "vertical",
                                border = "rounded",
                                title = "{source} {live} {flags}",
                                title_pos = "center",
                                { win = "input", height = 1,     border = "bottom" },
                                { win = "list",  border = "none" }, -- Explorer list on the right
                            },
                        },
                    },
                },
            },
        },
    },
}
