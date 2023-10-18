-- Please check `lua/core/settings.lua` to view the full list of configurable settings
local settings = {}

-- Examples
settings["use_ssh"] = false
settings["format_on_save"] = false

settings["colorscheme"] = "catppuccin"

settings["lsp_deps"] = {
    "matlab_ls"
--    "rust_analyzer"
}

settings["null_ls_deps"] = {
--  "rustfmt"
}


settings["treesitter_deps"] = {
	"matlab",
}

return settings
