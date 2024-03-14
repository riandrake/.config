-- Spell check certain file types
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "latex", "tex", "md", "markdown" },
	callback = function()
		vim.opt.spell = true
		vim.opt.wrap = true
		vim.opt.linebreak = true
	end,
})
