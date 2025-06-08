return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- JS
				null_ls.builtins.formatting.prettier,

				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- C/Cpp
				null_ls.builtins.formatting.clang_format,

				-- Php
				null_ls.builtins.formatting.phpcbf,

				-- Xml
				null_ls.builtins.formatting.xmlformatter,

				-- Cmake
				null_ls.builtins.formatting.cmakelang,
			},
		})
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
