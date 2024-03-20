vim.keymap.set("n", "<esc>", ":noh<cr>")

-- nvim-tree
vim.keymap.set("n", "<C-t>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<C-c>", ":NvimTreeClose<CR>")

-- Moving between splits and resizing
vim.keymap.set("n", "<C-j>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-H>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-w>k", ":resize +15<CR>")
vim.keymap.set("n", "<C-w>j", ":resize -15<CR>")
vim.keymap.set("n", "<C-w>h", ":vertical:resize -15<CR>")
vim.keymap.set("n", "<C-w>l", ":vertical:resize +15<CR>")

vim.keymap.set("n", "<leader>ww", ":ObsidianWorkspace work")
