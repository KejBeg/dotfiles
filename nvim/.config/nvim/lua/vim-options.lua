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

vim.keymap.set("n", "<M-C-h>", "<CMD>vertical resize -10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-l>", "<CMD>vertical resize +10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-j>", "<CMD>resize -10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-k>", "<CMD>resize +10<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<M-m>", "<CMD>vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-n>", "<CMD>split<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<M-w>", "<CMD>wq<CR>", { noremap = true, silent = true })


vim.keymap.set("n", "<M-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<M-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<M-k>", "<C-w>k", { noremap = true, silent = true })

vim.cmd([[
  command! Wa wa
  command! Qa qa
  command! W w
  command! Q q
  command! Wqa wqa
]])

vim.keymap.set("n", "<leader>t", function()
	local cwd = vim.fn.getcwd()
	os.execute(string.format("kitty --working-directory '%s' > /dev/null 2>&1 &", cwd))
end, { desc = "Open new Kitty with nvim in same dir" })
