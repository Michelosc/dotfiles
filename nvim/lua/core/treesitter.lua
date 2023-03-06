require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = "all",

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
	auto_install = true,
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = false,
		-- colors = {},
		disable = { "html" },
	},
	playground = {
		enable = true,
	},
})

