return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "typescript-language-server",
        "astro-language-server",
        "csharp-language-server", "csharpier",
        "tailwindcss-language-server",
        "rust-analyzer"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "c_sharp",
        "cpp", "gitignore", "go",
        "json", "rust", "sql",
        "tsx", "typescript", "yaml"
      },
  	},
  },
}
