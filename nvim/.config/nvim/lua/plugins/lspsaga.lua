return {

	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				enable = false,
			},
			hover = {
				open_link = "gx",
				open_cmd = "!xdg-open",
			},
			diagnostic = {
				show_layout = "float",
				border_follow = true,
			},
		})
		vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
		vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
		vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", {})
		vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {})
		vim.keymap.set("n", "<leader>el", "<cmd>Lspsaga show_buf_diagnostics<CR>", {})
	end,
}
