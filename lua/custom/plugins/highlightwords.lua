return {
	'tzachar/local-highlight.nvim',
	config = function()
		require('local-highlight').setup({
			hlgroup = 'Search',
			cw_hlgroup = nil,
			-- Whether to display highlights in INSERT mode or not
			insert_mode = false,
		})
	end
}
