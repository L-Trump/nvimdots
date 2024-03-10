local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
local et = bind.escape_termcode
local mappings = {}

-- Place global keymaps here.
mappings["plug_map"] = {}

-- NOTE: This function is special! Keymaps defined here are ONLY effective in buffers with LSP(s) attached
-- NOTE: Make sure to include `:with_buffer(buf)` to limit the scope of your mappings.
---@param buf number @The effective bufnr
mappings["lsp"] = function(buf)
	return {
		-- Example
		["n|K"] = require("keymap.bind").map_cr("Lspsaga hover_doc"):with_buffer(buf):with_desc("lsp: Show doc"),
		["n|<leader>h"] = map_callback(function()
			local cur_hint = vim.lsp.inlay_hint.is_enabled(buf)
			vim.lsp.inlay_hint.enable(buf, not cur_hint)

			if cur_hint then
				vim.notify(
					"Successfully disabled inlay-hint",
					vim.log.levels.INFO,
					{ title = "Settings modification success" }
				)
			else
				vim.notify(
					"Successfully enabled inlay-hint",
					vim.log.levels.INFO,
					{ title = "Settings modification success" }
				)
			end
		end):with_desc("lsp: Toggle inlay hint"),
	}
end

return mappings
