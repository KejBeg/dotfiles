vim.cmd("set tabstop=2")
vim.g.mapleader = " "

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.cmd("filetype plugin indent on")

vim.cmd("set number")
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.timeoutlen = 300

vim.cmd([[
  command! Wa wa
  command! Qa qa
  command! W w
  command! Q q
  command! Wqa wqa
]])

