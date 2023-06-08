local custom = {}

custom['lervag/vimtex'] = {
    lazy = false,
    ft = { "tex" },
    -- opts = { pattern = { "*.tex" } },
    config = require("custom.vimtex"),
}

return custom
