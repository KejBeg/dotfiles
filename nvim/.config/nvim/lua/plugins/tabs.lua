return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "thin",
				always_show_bufferline = true,
				diagnostics = "nvim_lsp",
				offsets = { { filetype = "neo-tree", text = "Explorer", padding = 0 } },
				show_buffer_close_icons = true,
				show_close_icon = true,
				enforce_regular_tabs = true,
			},
		})

	end,
}
