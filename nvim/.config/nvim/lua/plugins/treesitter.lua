return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "php", "cpp", "c", "html", "phpdoc", "tsx", "typescript", "css", "json", "markdown", "markdown_inline", "bash", "vim" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "php" },
			},
			indent = { enable = true },
		})
	end,
}
