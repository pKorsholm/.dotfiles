-- leader key
vim.g.mapleader = " "

-- line numbers 
vim.opt.nu = true
vim.wo.relativenumber = true

-- spaces instead of tabs (width 2)
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- forget about wrapping
vim.opt.wrap = false

-- highlight search as it's written (see adaptive highlight function as well)
vim.opt.incsearch = true

vim.g.undotree_SetFocusWhenToggle = 1

--vim.opt.swapfile = true
--vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes"

vim.opt.smartcase = true
vim.opt.ignorecase = true


