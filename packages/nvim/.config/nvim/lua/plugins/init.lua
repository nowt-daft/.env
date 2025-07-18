return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"bash-language-server",

				"css-lsp",
				"html-lsp",
				"json-lsp",
				"typescript-language-server",

				"intelephense",

				"lua-language-server",
			}
		}
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
				"jsdoc",
				"javascript",
				"typescript",

				"php",

				"markdown",
				"markdown_inline"
			},
		},
	},
}
