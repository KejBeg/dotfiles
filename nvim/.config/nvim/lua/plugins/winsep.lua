return {
	"nvim-zh/colorful-winsep.nvim",
	config = function()
		require("colorful-winsep").setup({
			-- highlight for Window separator
			hi = {
				bg = "#161616",
				fg = "#f0f0f0",
			},
			symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
			only_line_seq = true,
			smooth = true,
			exponential_smoothing = true,
			anchor = {
				left = { height = 1, x = -1, y = -1 },
				right = { height = 1, x = -1, y = 0 },
				up = { width = 0, x = -1, y = 0 },
				bottom = { width = 0, x = 1, y = 0 },
			},
			light_pollution = function(lines) end,
		})
	end,
}
