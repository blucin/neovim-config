  return { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        ensure_installed = {"lua", "javascript", "vim", "vimdoc", "query", "astro", "bash", "c", "css", "go", "elixir", "gitcommit", "gitignore", "gomod", "gosum", "gotmpl", "graphql", "html", "htmldjango", "java", "jsdoc", "json", "json5", "latex", "kotlin", "make", "prisma", "python", "rust", "sql", "svelte", "tmux", "typescript", "typst", "typescript", "xml", "yaml"},
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
