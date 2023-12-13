return {
	'navarasu/onedark.nvim',
	config = function()
		require('onedark').setup {
			style = 'warmer'
		}
		require('onedark').load()
		vim.cmd.colorscheme 'onedark'
	end,
}