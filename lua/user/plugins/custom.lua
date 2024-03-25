local custom = {}

custom["lervag/vimtex"] = {
	lazy = false,
	ft = { "tex" },
	-- opts = { pattern = { "*.tex" } },
	config = require("user.configs.vimtex"),
}

custom["andrewferrier/wrapping.nvim"] = {
	lazy = true,
	ft = {
		"asciidoc",
		"gitcommit",
		"latex",
		"mail",
		"markdown",
		"rst",
		"tex",
		"text",
	},
	config = require("user.configs.wrapping"),
	event = "BufWinEnter",
}

custom["chipsenkbeil/distant.nvim"] = {
	branch = "v0.2",
	lazy = true,
	event = "VeryLazy",
	config = require("user.configs.distant"),
}

custom["okuuva/auto-save.nvim"] = {
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
}

-- custom['dapt4/vim-autoSurround'] = {
--     lazy = true,
--     event = "VeryLazy",
-- }

custom["kylechui/nvim-surround"] = {
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}

-- custom["gen740/SmoothCursor.nvim"] = {
-- 	lazy = true,
-- 	event = "CursorMoved",
-- 	config = require("user.configs.smoothcursor"),
-- }

custom["max397574/better-escape.nvim"] = {
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("user.configs.better-escape"),
}

return custom
