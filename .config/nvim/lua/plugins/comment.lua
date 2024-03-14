return {
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = function()
			require("Comment").setup({
				toggler = {
					line = "gc",
				},
				opleader = {
					line = "gc",
				},
				extra = nil,
				mappings = {
					extra = false,
				},
			})
		end,
	},
}
