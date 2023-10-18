local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
local et = bind.escape_termcode
return {
	-- 取消高亮
	["n|<leader>nh"] = map_cr("nohl"):with_silent():with_desc("Tool: cancel highlight"),

	-- 全选
	["n|<leader>a"] = map_cmd("ggVG"):with_noremap():with_silent():with_desc("Editor: Select All"),
	["n|<C-a>"] = map_cmd("ggVG"):with_noremap():with_silent():with_desc("Editor: Select All"),

	-- Comment
	["n|<C-_>"] = map_callback(function()
			return vim.v.count == 0 and et("<Plug>(comment_toggle_linewise_current)")
				or et("<Plug>(comment_toggle_linewise_count)")
		end)
		:with_silent()
		:with_noremap()
		:with_expr()
		:with_desc("edit: Toggle comment for line"),
	["x|<C-_>"] = map_cmd("<Plug>(comment_toggle_linewise_visual)gv")
		:with_silent()
		:with_noremap()
		:with_desc("edit: Toggle comment for line with selection"),

	-- 使用符号包裹 - VISUAL
	['v|<leader>"'] = map_cmd('"5c"<C-r>""<ESC>'):with_silent():with_desc('editor: embrace with ""'),
	['v|<leader>\''] = map_cmd("\"5c'<C-r>\"'<ESC>"):with_silent():with_desc("editor: embrace with ''"),

	-- 取消符号包裹 - VISUAL
	['v|<leader><leader>"'] = map_cmd('a"l:s/\\%V"\\(\\_.*\\)"\\%V/\\1/g<CR>gvhh<ESC>'):with_silent():with_desc('editor: cancel embrace ""'),
	["v|<leader><leader>'"] = map_cmd('a\'l:s/\\%V\'\\(\\_.*\\)\'\\%V/\\1/g<CR>gvhh<ESC>'):with_silent():with_desc('editor: cancel embrace \'\''),
}
