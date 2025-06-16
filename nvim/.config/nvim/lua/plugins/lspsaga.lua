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
	end,
}
