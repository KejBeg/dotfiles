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

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<M-C-H>", "<CMD>vertical resize -10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-L>", "<CMD>vertical resize +10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-J>", "<CMD>resize -10<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-C-K>", "<CMD>resize +10<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>hs", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>q", "<CMD>bdelete<CR>", { noremap = true, silent = true })

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
