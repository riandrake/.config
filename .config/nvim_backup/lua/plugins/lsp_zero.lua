return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {

            { "nvim-telescope/telescope.nvim" },
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            {
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-nvim-lsp-signature-help" },
        },
        lazy = false,
        config = function()
            local lsp = require("lsp-zero").preset({ name = "recommended" })

            lsp.on_attach(function(client, bufnr)
                local opts = { buffer = bufnr }
                lsp.default_keymaps(opts)

                local tele_builtin = require("telescope.builtin")
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "gd", tele_builtin.lsp_definitions, opts)
                vim.keymap.set("n", "gr", tele_builtin.lsp_references, opts)
            end)

            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            local cmp_mappings = lsp.defaults.cmp_mappings({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            })

            cmp_mappings["<Tab>"] = nil
            cmp_mappings["<S-Tab>"] = nil

            lsp.setup_nvim_cmp({
                mapping = cmp_mappings,
            })

            lsp.ensure_installed({
                -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
                "tsserver",
                "pyright",
                "eslint",
                "bashls",
                "cssls",
                "html",
                "jsonls",
                "lua_ls",
                "sqlls",
                "terraformls",
                "yamlls",
                "clangd",
            })

            lsp.format_mapping("<leader>fo", {
                format_opts = {
                    async = true,
                    timeout_ms = 10000,
                },
                servers = {
                    ["null-ls"] = {
                        "javascript",
                        "typescript",
                        "lua",
                        "python",
                        "go",
                        "json",
                        "typescriptreact",
                    },
                },
            })

            lsp.setup()
        end,
    },
}
