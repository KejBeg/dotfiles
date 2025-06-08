return {
	"nvim-neo-tree/neo-tree.nvim",

	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
				},
			},
		})

		vim.keymap.set("n", "<leader>e", "<CMD>Neotree position=left focus<CR>",{ desc = "Open Neovim with Neo-tree in fullscreen in Kitty" })
		vim.keymap.set("n", "<leader>te", "<CMD>Neotree position=left toggle<CR>",{ desc = "Open Neovim with Neo-tree in fullscreen in Kitty" })
	end,
}
