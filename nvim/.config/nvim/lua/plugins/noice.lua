return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				signature = {
					enabled = false,
					auto_open = false,
				},
				message = {
					enabled = false,
				},
				hover = {
					enabled = false,
				},
			},
			cmdline = {
				view = "cmdline_popup",
			},
			views = {
				cmdline_popup = {
					position = {
						row = "50%",
						col = "50%",
					},
					size = {
						width = 60,
						height = "auto",
					},
				},
			},
		})
	end,
}
