-- -----------------------------------------------------------------------------------------------
-- General configuration
-- -----------------------------------------------------------------------------------------------
-- Basic settings
vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.spelllang = "en_gb"

-- use nvim-tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Use system clipboard
vim.opt.clipboard = "unnamed"

-- Display settings
vim.opt.termguicolors = false
vim.opt.background = "dark"

-- scroll a bit extra horizontally and vertically when at the end/bottom
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.wrap = false

-- Title
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to

-- Persist undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true

-- Tab stuff
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Search configuration
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true

-- scroll a bit extra horizontally and vertically when at the end/bottom
vim.opt.sidescrolloff = 8
vim.opt.scrolloff = 8

-- open new split panes to right and below (as you probably expect)
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Highlight trailing characters
vim.opt.listchars = {
	-- eol = "↲",
	tab = "▸ ",
	trail = "·",
}
vim.opt.list = true

-- -----------------------------------------------------------------------------------------------
-- Keymap settings
-- -----------------------------------------------------------------------------------------------
-- Basic keys
vim.g.mapleader = " "

vim.keymap.set("n", "<esc>", ":noh<cr>")

-- nvim-tree
vim.keymap.set("n", "<C-t>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<C-c>", ":NvimTreeClose<CR>")

-- Moving between splits and resizing
vim.keymap.set("n", "<C-j>", "<C-W><C-J>")
vim.keymap.set("n", "<C-k>", "<C-W><C-K>")
vim.keymap.set("n", "<C-l>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-w>k", ":resize +15<CR>")
vim.keymap.set("n", "<C-w>j", ":resize -15<CR>")
vim.keymap.set("n", "<C-w>h", ":vertical:resize -15<CR>")
vim.keymap.set("n", "<C-w>l", ":vertical:resize +15<CR>")

-- -----------------------------------------------------------------------------------------------
-- Plugin list
-- -----------------------------------------------------------------------------------------------

local plugins = {

	{ "christoomey/vim-sort-motion" },

  -- Display Marks
	{ "kshenoy/vim-signature" },

  { "michaeljsmith/vim-indent-object" },

  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  { "tpope/vim-commentary" },

  { "NoahTheDuke/vim-just" },

	-- Gruvbox theme with Treesitter support
	{ "ellisonleao/gruvbox.nvim" },

	-- Used by LuaLine and nvim-tree
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},

	-- Pretty indentation lines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	-- Commenting tool
	{ "numToStr/Comment.nvim" },

	-- Status line at the bottom
	{ "nvim-lualine/lualine.nvim" },

	-- File browser
	{ "nvim-tree/nvim-tree.lua" },

  -- neodev
  { "folke/neodev.nvim", opts = {} },

	-- LSP-Zero
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
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
	},

	-- Null LS
	{ "jose-elias-alvarez/null-ls.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{ "jay-babu/mason-null-ls.nvim" },

	-- TreeSitter
	{
		"nvim-treesitter/nvim-treesitter",
		priority = 1000,
		lazy = false,
		version = nil,
		build = ":TSUpdate",
	},
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "HiPhish/nvim-ts-rainbow2" },
	{ "nvim-treesitter/playground" },

  { "github/copilot.vim" },

	-- Telescope
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- gitsigns
	{ "lewis6991/gitsigns.nvim" },

	{ "ggandor/leap.nvim" },
}

-- -----------------------------------------------------------------------------------------------
-- Plugin installation
-- -----------------------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins)

-- -----------------------------------------------------------------------------------------------
-- Plugin config
-- -----------------------------------------------------------------------------------------------
vim.cmd("colorscheme gruvbox")

require("nvim-tree").setup()

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#ebdbb2 gui=nocombine]])

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

require("lualine").setup({
	sections = {
		lualine_a = {},
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = {},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})

local tele_builtin = require("telescope.builtin")
-- vim.keymap.set("n", "<leader>ff", tele_builtin.git_files, {})
vim.keymap.set("n", "<leader>ff", tele_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", tele_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", tele_builtin.buffers, {})

require("gitsigns").setup({ current_line_blame = true })

require("leap").add_default_mappings()

-- -----------------------------------------------------------------------------------------------
-- Treesitter
-- -----------------------------------------------------------------------------------------------
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
		"beancount",
		"css",
		"diff",
		"dockerfile",
		"git_rebase",
		"html",
		"jq",
		"json",
		"latex",
		"markdown",
		"terraform",
		"yaml",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- -----------------------------------------------------------------------------------------------
-- LSP stuff
-- -----------------------------------------------------------------------------------------------
local lsp = require("lsp-zero").preset({ name = "recommended" })
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr }
	lsp.default_keymaps(opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "gd", tele_builtin.lsp_definitions, opts)
	vim.keymap.set("n", "gr", tele_builtin.lsp_references, opts)
end)

lsp.ensure_installed({
	-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
	"tsserver",
	"pyright",
	"eslint",
	"bashls",
	"beancount",
	"cssls",
	"html",
	"jsonls",
	"lua_ls",
	"sqlls",
	"terraformls",
	"yamlls",
})

-- lspconfig["pyright"].setup({
-- 	capabilities = capabilities,
-- 	on_attach = on_attach,
-- 	settings = {
-- 		python = {
-- 			pythonPath = "/usr/bin/python3",
-- 		},
-- 		pyright = {},
-- 	},
-- })

-- lsp.configure("pyright", {
-- 	settings = {
-- 		python = {
-- 			venv = "events",
-- 			venvPath = { "/Users/chris/.pyenv/versions" },
-- 			extraPaths = { "/Users/chris/.pyenv/versions/tl_data/" },
-- 		},
-- 	},
-- })

lsp.format_mapping("<leader>fo", {
	format_opts = {
		async = true,
		timeout_ms = 10000,
	},
	servers = {
		["null-ls"] = { "javascript", "typescript", "lua", "python", "go", "json", "typescriptreact" },
	},
})

lsp.setup()

local null_ls = require("null-ls")
null_ls.setup({
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
	sources = {
	},
})
require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = true,
})

local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp_signature_help" },
		{ name = "path", max_item_count = 4 },
		{ name = "nvim_lsp", max_item_count = 4 },
		{ name = "buffer", keyword_length = 3 },
		{ name = "luasnip", keyword_length = 2 },
	},
	preselect = "item",
	completion = {
		-- autocomplete = false,
		completeopt = "menu,menuone,noinsert",
	},
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		-- ["<Tab>"] = cmp_action.tab_complete(),
		-- ["<Tab>"] = cmp.mapping.complete(),
	},
})

-- -----------------------------------------------------------------------------------------------
-- Filetype-specific settings
-- -----------------------------------------------------------------------------------------------
-- Spell check certain file types
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "latex", "tex", "md", "markdown" },
	callback = function()
		vim.opt.spell = true
		vim.opt.wrap = true
		vim.opt.linebreak = true
	end,
})

-- Beancount
vim.filetype.add({
	extension = {
		bean = "beancount",
	},
})

-- Set font
vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h10" }
