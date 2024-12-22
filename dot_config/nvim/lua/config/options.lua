vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.g.have_nerd_font = true
vim.o.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.completeopt = 'menu,menuone,noselect'

vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smoothscroll = true
vim.opt.scrolloff = 4

vim.opt.smartindent = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.opt.shortmess:append({ S = true, W = true, I = true, c = true, C = true })

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.laststatus = 3
vim.opt.cmdheight = 1

vim.opt.confirm = true

vim.opt.pumblend = 10
vim.opt.pumheight = 10

vim.opt.shiftround = true
