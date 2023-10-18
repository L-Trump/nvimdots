local custom = {}

custom['lervag/vimtex'] = {
    lazy = false,
    ft = { "tex" },
    -- opts = { pattern = { "*.tex" } },
    config = require("user.configs..vimtex"),
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
    config = require("user.configs.wrapping"),
    event = "BufWinEnter",
}

custom['chipsenkbeil/distant.nvim'] = {
    branch = 'v0.2',
    lazy = true,
    event = "VeryLazy",
    config = require("user.configs.distant")
}

custom['okuuva/auto-save.nvim'] = {
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
}

return custom
