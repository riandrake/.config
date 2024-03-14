return {
	{
		"nvim-treesitter/nvim-treesitter",
		priority = 1000,
		lazy = false,
		version = nil,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or "all"
				-- https://github.com/nvim-treesitter/nvim-treesitter/tree/master#supported-languages
				playground = {
					enable = false,
				},
				rainbow = {
					enable = true,
					query = "rainbow-parens",
					-- Highlight the entire buffer all at once
					strategy = require("ts-rainbow").strategy.global,
				},
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"python",
					"javascript",
					"typescript",
					"go",
					"sql",
					"bash",
					"css",
					"diff",
					"dockerfile",
					"git_rebase",
					"html",
					"jq",
					"json",
					"latex",
					"markdown",
					"markdown_inline",
					"terraform",
					"yaml",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	},
	{ "nvim-treesitter/nvim-treesitter-context", lazy = false },
	{ "nvim-treesitter/playground", lazy = false },
	{ "HiPhish/nvim-ts-rainbow2", lazy = false },
}
