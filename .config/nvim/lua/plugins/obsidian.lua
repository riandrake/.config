return {
    "epwalsh/obsidian.nvim",
    lazy = false,
    event = {
        -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
        "BufReadPre "
        .. vim.fn.expand("~")
        .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/**.md",
        "BufNewFile " .. vim.fn.expand("~") .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/**.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "personal",
                path = "/Users/rian.drake/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
            },
            {
                name = "work",
                path = "/Users/rian.drake/Library/Mobile Documents/iCloud~md~obsidian/Documents/Work",
            },
        },

        -- see below for full list of options 👇
    },
}
