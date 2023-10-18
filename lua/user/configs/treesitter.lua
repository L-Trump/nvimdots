return {
	highlight = {
		disable = function(ft, bufnr)
			if vim.tbl_contains({ "vim" }, ft) then
				return true
			end

			if vim.tbl_contains({ "latex" }, ft) then
				return true
			end

			local ok, is_large_file = pcall(vim.api.nvim_buf_get_var, bufnr, "bigfile_disable_treesitter")
			return ok and is_large_file
		end,
	},
	textobjects = {
		select = {
			disable = { 'latex' },
		},
		move = {
			disable = { 'latex' },
		},
	},
}
