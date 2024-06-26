return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "eslint",
          "gopls",
          "typst_lsp",
          "pyright",
        }
      })
    end
  },
  {
    -- list: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default -- for snippets
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.eslint.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.typst_lsp.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
    end
  }
}
