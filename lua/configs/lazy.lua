return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "catppuccin-macchiato"
		end,
	},
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      return require "configs.telescope"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "rust",
        "go",
        "cpp",
        "python",
        "c_sharp",
        "yaml",
        "json",
        "graphql",
        "astro",
        "gitignore"
      },
    },
  },
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate","MasonUninstallAll" },
    opts = function()
      return require "configs.mason"
    end,
    config = function(_,opts)
	    require("mason").setup(opts)
	    vim.api.nvim_create_user_command("MasonInstallAll", function()
        if opts.ensure_installed and #opts.ensure_installed > 0 then
          vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
        end
      end, {})
    vim.g.mason_binaries_list = opts.ensure_installed
    end
  },
  {"williamboman/mason-lspconfig.nvim"},
  {
    "neovim/nvim-lspconfig",
    dependencies={
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},
    },
    config = function()
      require("configs.lspconfig")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = function()
      return require "configs.nvimtree"
    end,
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = function()
      return require("configs.barbar")
    end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      return require("configs.dashboard")
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
}

