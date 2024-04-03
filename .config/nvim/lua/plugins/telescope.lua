return {
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        lazy = false,
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    },
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        tag = "0.1.2",
        dependencies = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzy-native.nvim",
            "jvgrootveld/telescope-zoxide",
        },
        config = function()
            local tele_builtin = require("telescope.builtin")

            local telescope = require("telescope")
            telescope.load_extension("zoxide")

            -- vim.keymap.set("n", "<leader>ff", tele_builtin.git_files, {})
            vim.keymap.set("n", "<leader>ff", tele_builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", tele_builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", tele_builtin.buffers, {})
            vim.keymap.set("n", "<leader>z", require("telescope").extensions.zoxide.list)
        end,
    },
}
