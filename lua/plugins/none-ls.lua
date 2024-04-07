return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			-- available list: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/builtins.json
			local sources = {
				-- formatters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.typstfmt,

				-- diagnostic
				-- null_ls.builtins.diagnostics.,
			}
			null_ls.setup({ sources = sources })
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = { "stylua", "eslint_d", "prettierd", "typstfmt" },
			})
		end,
	},
}
