return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({
		})
		require("mini.comment").setup({
		})
		require("mini.pairs").setup({
		})
		require("mini.surround").setup({
		})
		-- require("mini.animate").setup({
		-- })
		require("mini.indentscope").setup({
		})
		require("mini.icons").setup({
		})
		require("mini.cursorword").setup({
		})
		require("mini.trailspace").setup({
		})
		require("mini.hipatterns").setup({
		})
		require("mini.map").setup({
		})
		require("mini.bracketed").setup({
		})
		require("mini.clue").setup({
		})
		require("mini.basics").setup({
		})
	end,
}
