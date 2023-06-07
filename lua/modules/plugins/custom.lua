local custom = {}

custom['lervag/vimtex'] = {
    lazy = true,
    ft = { "tex" },
    opts = { pattern = { "*.tex" } },
    config = require("custom.vimtex"),
}

return custom
