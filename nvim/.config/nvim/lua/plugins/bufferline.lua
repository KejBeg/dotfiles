return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "slant",
				always_show_bufferline = true,
				diagnostics = "nvim_lsp",
				offsets = { { filetype = "neo-tree", text = "Explorer", padding = 1 } },
				show_buffer_close_icons = true,
				show_close_icon = true,
			},
		})
		vim.api.nvim_set_keymap("n", "<leader><leader>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		for i = 1, 10, 1 do
			vim.api.nvim_set_keymap(
				"n",
				"<leader>" .. i,
				":BufferLineGoToBuffer " .. i .. "<CR>",
				{ noremap = true, silent = true }
			)
		end
	end,
}
