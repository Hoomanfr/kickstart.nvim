return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/neotest-go",
		-- Your other test adapters here
	},
	config = function()
		-- get neotest namespace (api call creates or returns namespace)
		local neotest_ns = vim.api.nvim_create_namespace("neotest")
		vim.diagnostic.config({
			virtual_text = {
				format = function(diagnostic)
					local message =
							diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
					return message
				end,
			},
		}, neotest_ns)
		require("neotest").setup({
			vim.keymap.set('n', '<leader>tf', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true }),

			vim.keymap.set('n', '<leader>ts', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true }),


			vim.keymap.set('n', '<leader>to', ':lua require("neotest").output.open()<CR>', { noremap = true, silent = true }),
			vim.keymap.set('n', '<leader>tO', ':lua require("neotest").output.open({enter=true})<CR>',
				{ noremap = true, silent = true }),

			vim.keymap.set('n', '<leader>ti', ':lua require("neotest").summary.toggle()<CR>', { noremap = true, silent = true }),
			vim.keymap.set('n', '<leader>ta', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>',
				{ noremap = true, silent = true }),

			vim.keymap.set('n', '<leader>tp', "<cmd>lua require('neotest').jump.prev({status='failed'})<CR>",
				{ noremap = true, silent = true }),

			vim.keymap.set('n', '<leader>tn', "<cmd>lua require('neotest').jump.next({status='failed'})<CR>",
				{ noremap = true, silent = true }),

			adapters = {
				require("neotest-go"),
			},
		})
	end,
}
