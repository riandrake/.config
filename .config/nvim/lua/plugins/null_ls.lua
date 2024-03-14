return {
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			local null_ls = require("null-ls")

			local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.diagnostics.eslint,
					null_ls.builtins.completion.spell,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.keymap.set("n", "<Leader>z", function()
							vim.lsp.buf.format({ bufnr = bufnr, async = async })
						end, { buffer = bufnr, desc = "[lsp] format" })

						-- format on save
						vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							group = group,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr, async = async })
							end,
							desc = "[lsp] format on save",
						})
					end

					if client.supports_method("textDocument/rangeFormatting") then
						vim.keymap.set("x", "<leader>f", function()
							vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
						end, { buffer = bufnr, desc = "[lsp] format" })
					end
				end,
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		lazy = false,
		config = function()
			require("mason-null-ls").setup({ ensure_installed = nil, automatic_installation = true })
		end,
	},
}
