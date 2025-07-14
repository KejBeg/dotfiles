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

vim.api.nvim_set_keymap("n", "<C-h>", "<CMD>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<CMD>BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F23>", "<CMD>BufferLineCycleNext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<F13>", "<CMD>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F14>", "<CMD>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F15>", "<CMD>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F16>", "<CMD>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F17>", "<CMD>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F18>", "<CMD>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F19>", "<CMD>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F20>", "<CMD>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F21>", "<CMD>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F22>", "<CMD>BufferLineGoToBuffer 10 <CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>gf","<CMD>Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", {})


vim.keymap.set("n", "<leader>nd", "<CMD>NoiceDismiss<CR>", { desc = "Noice: Show Last Message" })
vim.keymap.set("n", "<leader>na", "<CMD>Telescope noice<CR>", { desc = "Noice: Show Last Message" })

vim.keymap.set(
	"n",
	"<leader>e",
	"<CMD>Neotree position=left focus<CR>",
	{ desc = "Open Neovim with Neo-tree in fullscreen in Kitty" }
)
vim.keymap.set(
	"n",
	"<leader>te",
	"<CMD>Neotree position=left toggle<CR>",
	{ desc = "Open Neovim with Neo-tree in fullscreen in Kitty" }
)

vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", {})
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {})
vim.keymap.set("n", "<leader>el", "<cmd>Lspsaga show_buf_diagnostics<CR>", {})

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

vim.api.nvim_set_keymap("n", "<leader>a", "<CMD>CopilotChat<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>at", "<CMD>CopilotChatToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ae", "<CMD>CopilotChatExplain<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>af", "<CMD>CopilotChatFix<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ad", "<CMD>CopilotChatDocs<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ar", "<CMD>CopilotChatReset<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>am", "<CMD>CopilotChatModels<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>as", "<CMD>CopilotChatStop<CR>", { noremap = true, silent = true })
