local options = {
	hlsearch = true,
	termguicolors = true, -- Enable 24 bits color in terminal
	background = "dark",
	guicursor = "a:block,i-ci-ve:ver25", -- Set the gui cursor to nothing for each mode
	inccommand = "nosplit", -- Show effect of command incrementally while writing it (substitution)
	grepprg = "rg --vimgrep --no-heading --smart-case",
	showmode = false, -- Don't need to show mode
	mouse = "a", -- Enable mouse in all mode
	tabstop = 2, -- A tab is 4 spaces (display)
	shiftwidth = 4, -- Indent to 4 spaces
	softtabstop = 4, -- A tab is 4 spaces (insert mode)
	expandtab = true, -- Use spaces instead of tab character
	autoindent = true,
	smartindent = true, -- Smart auto indent on new line
	cursorline = false, -- Highlight the current line the cursor is on
	clipboard = "unnamedplus", -- Use + register for yank, delete, change and put operation
	hidden = true, -- Make sure hidden buffer are not unloaded
	backup = false, -- Disable file backups
	writebackup = false, -- Disable file backup on save
	swapfile = false, -- Disable swap files
	laststatus = 3, -- Single status line for the whole frame
	signcolumn = "yes", -- Show the sign colum (for gitsigns)
	number = true, -- Show line numbers
	relativenumber = true, -- Use relative line numbers
	sidescrolloff = 8,
	scrolloff = 8, -- Keep at least 8 lines above the cursor.
	wrap = false, -- Disable line wrap
	spelllang = "en_gb",
	backspace = { "indent", "eol", "start" },
	undodir = vim.fn.stdpath("cache") .. "/undo",
	undofile = true,
	ignorecase = true,
	smartcase = true,
	gdefault = true,
	splitright = true,
	splitbelow = true,
	listchars = { tab = "▸ ", trail = "·" },
	list = true,
	guifont = { "JetBrainsMono Nerd Font", ":h12" },
	conceallevel = 2,
	iminsert = 1,
	imsearch = 1,
}

for opt, val in pairs(options) do
	vim.opt[opt] = val
end
