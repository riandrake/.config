vim.keymap.set("n", "<esc>", ":noh<cr>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>W", ":wq<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":qa<CR>")

vim.cmd([[
iab <expr> ddate strftime("%Y-%m-%d")
iab <expr> ttime strftime("%H:%M")
iab <expr> ptime strftime("%l:%M%p")
]])
