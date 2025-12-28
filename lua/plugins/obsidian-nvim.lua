return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    -- enabled = false,
    -- ft = "markdown",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "notes",
                path = "~/notes",
            },
        },
        ui = { 
            enable = false 
        },
    },
}
