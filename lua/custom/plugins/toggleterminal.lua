function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

return {
	'akinsho/toggleterm.nvim',
	config = function()
		require("toggleterm").setup {
			open_mapping = [[<c-\>]],
			vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
		}
	end
}
