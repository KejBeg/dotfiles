return {
-- 	'stevearc/conform.nvim',
-- 	config = function()
-- 		require("conform").setup({
-- 			formatters_by_ft = {
-- 				lua = { "stylua" },
-- 				python = { "isort", "black" },
-- 				rust = { "rustfmt", lsp_format = "fallback" },
-- 				javascript = { "prettierd", "prettier", stop_after_first = true },
-- 				-- c = {"clang=format"},
-- 			},
-- 		})
--
-- 		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
-- 	end
}
