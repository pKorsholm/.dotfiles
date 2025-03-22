vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>pv", ":Oil <CR>")
-- )

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- paste without overriding previous yank
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to host clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("v", "<leader>/", "\"sy<C-c>q/\"sp<CR>N")

-- window remaps
-- vim.keymap.set("n", "<leader>h", "<C-w>h")
-- vim.keymap.set("n", "<leader>l", "<C-w>l")

