return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			buffers = {
				follow_current_file = true,
			},
			vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>'),
			vim.keymap.set('n', '<C-d>', '<Cmd>Neotree reveal<CR>'),
		}
	end,
}
