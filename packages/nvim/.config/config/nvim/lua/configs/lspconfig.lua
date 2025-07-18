require("nvchad.configs.lspconfig").defaults()

-- !!
-- read :h vim.lsp.config for changing options of lsp servers 
-- !!

--
-- ENABLE PLUGINS INSTALLED BY MASON
--
local servers = {
	"html",
	"cssls",
	"ts_ls",
	"bashls",
	"jsonls",
	"intelephense",
	--"phpactor",
}

--
-- INTELEPHENSE (PHP and Wordpress Setup)
--
-- https://github.com/php/php-src/tree/master/ext <-- STUBS TO INCLUDE REFERENE!
--
-- composer global require
--	  phpstan/php-8-stubs
--	  php-stubs/wordpress-globals
--	  php-stubs/wordpress-stubs
--	  php-stubs/wordpress-tests-stubs
--	  php-stubs/woocommerce-stubs
--	  php-stubs/acf-pro-stubs
--	  php-stubs/genesis-stubs
--	  php-stubs/wp-cli-stubs
--	  wpsyntex/polylang-stubs
--
local intelephense_settings = {
	intelephense = {
		stubs = {
			"bcmath",
			"bz2",

			"calendar",
			"Core",
			"curl",

			"date",
			"dom",

			"fileinfo",
			"filter",

			"gd",
			"gettext",

			"hash",

			"iconv",
			"imap",
			"intl",

			"json",

			"libxml",

			"mbstring",
			"mcrypt",
			"mysql",
			"mysqli",

			"password",
			"pcntl",
			"pcre",
			"PDO",
			"pdo_mysql",
			"Phar",

			"random",
			"readline",
			"regex",

			"session",
			"SimpleXML",
			"sockets",
			"sodium",
			"standard",
			"superglobals",

			"tokenizer",

			"xml",
			"xdebug",
			"xmlreader",
			"xmlwriter",

			"yaml",

			"zip",
			"zlib",

			"wordpress",
			"woocommerce",
			"acf-pro",
			"wordpress-globals",
			"wp-cli",
			"genesis",
			"polylang"
		},
		environment = {
			includePaths = {
				'/home/kai/.config/composer/vendor/php-stubs',
				'/home/kai/.config/composer/vendor/wpsyntex'
			}
		},
		files = {
			maxSize = 5000000,
		}
	}
}

vim.lsp.config("intelephense", { settings = intelephense_settings })
vim.lsp.enable(servers)

