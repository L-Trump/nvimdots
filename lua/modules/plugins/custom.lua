local custom = {}

custom['lervag/vimtex'] = {
    lazy = false,
    ft = { "tex" },
    -- opts = { pattern = { "*.tex" } },
    config = require("custom.vimtex"),
}

custom['andrewferrier/wrapping.nvim'] = {
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
    config = require("custom.wrapping"),
	event = "BufWinEnter",
}

return custom
