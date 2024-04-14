return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.register({
			-- telescope binds
			f = {
				name = "+Find",
				f = { "<cmd>Telescope find_files<CR>", "Find File" },
				g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
				b = { "<cmd>Telescope buffers<CR>", "Buffers" },
				h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
				r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
				n = { "<cmd>enew<cr>", "New File" },
			},

			-- lsp binds
			d = {
				name = "+Diagnostics",
				n = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
				p = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
				l = { "<cmd>lua vim.diagnostic.setloclist()<CR>", "List Diagnostics" },
			},
			c = {
				name = "+Code",
				a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
			},
			r = {
				name = "+References",
				f = { "<cmd>lua vim.lsp.buf.references()<CR>", "Find References" },
			},

			-- neotree and oil binds
			e = {
				name = "+Explorer",
				e = { "<cmd>Neotree toggle filesystem left<CR>", "Toggle Neotree" },
				o = { "<cmd>Oil<CR>", "Open Oil" },
				t = { "<cmd>Oil --tree<CR>", "Open Oil Tree" },
			},
		}, {
			prefix = "<leader>",
		})
	end,
}
