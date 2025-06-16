return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"marksman",
					"phpactor",
					"lemminx",
					"taplo"
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
				cmd = { "clangd", "--compile-commands-dir=build/" },
				-- root_dir = require("lspconfig").util.root_pattern("compile_commands.json", ".git"),
			})

			lspconfig.marksman.setup({
				capabilities = capabilities,
			})
			lspconfig.lemminx.setup({
				capabilities = capabilities,
			})

			lspconfig.hydra_lsp.setup({
				capabilities = capabilities,
			})

			lspconfig.dotls.setup({
				capabilities = capabilities,
			})

			lspconfig.taplo.setup({
				capabilities = capabilities,
			})


		end,
	},
}
