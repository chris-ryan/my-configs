require('config.lsp')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.winborder = 'rounded'
vim.opt.wrap = false

vim.pack.add({
	{src = "https://github.com/kamwitsta/nordisk.git"},
})

vim.cmd("colorscheme nordisk")
