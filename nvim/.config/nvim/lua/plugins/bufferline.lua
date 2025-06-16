return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				-- separator_style = "slant",
				always_show_bufferline = true,
				diagnostics = "nvim_lsp",
				offsets = { { filetype = "neo-tree", text = "Explorer", padding = 1 } },
				show_buffer_close_icons = true,
				show_close_icon = true,
			},
		})

		vim.api.nvim_set_keymap("n", "<C-h>", "<CMD>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<C-l>", "<CMD>BufferLineCycleNext<CR>", { noremap = true, silent = true })

		vim.api.nvim_set_keymap("n", "<F23>", "<CMD>BufferLineCycleNext<CR>", { noremap = true, silent = true })
		for i = 1, 9, 1 do
			vim.api.nvim_set_keymap(
				"n",
				"<F" .. i+12 .. ">",
				"<CMD>BufferLineGoToBuffer " .. i .. "<CR>",
				{ noremap = true, silent = true }
			)
		end
		vim.api.nvim_set_keymap("n", "<F22>", ":BufferLineGoToBuffer" .. 10 .. "<CR>", { noremap = true, silent = true })
	end,
}
