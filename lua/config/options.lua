vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.winborder = "rounded"
vim.o.swapfile = false
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 4
vim.o.sidescrolloff = 8
vim.o.showmode = false
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.wo.signcolumn = "yes"
vim.o.breakindent = true
vim.o.updatetime = 250
vim.o.backup = false
vim.o.writebackup = false
vim.o.undofile = true
vim.o.completeopt = "menuone,noselect"
vim.opt.shortmess:append("c")
vim.opt.iskeyword:append("-")
vim.opt.formatoptions:remove({ "c", "r", "o" })
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
